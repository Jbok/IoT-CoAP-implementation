#include "wifi.h"
#include <tinyara/gpio.h>
#include <tinyara/analog/adc.h>
#include <tinyara/analog/ioctl.h>

#include <apps/netutils/dhcpc.h>

#include <apps/shell/tash.h>

// for NTP
#include <apps/netutils/ntpclient.h>

#define DEFAULT_CLIENT_ID "123456789"

#define STR_POST_PATH "v1.1/messages/4"

#define SERVER_ADDR ""
#define SERVER_PORT

#define NET_DEVNAME "wl1"

#define DEBUG 1

#define BUFF_SIZE 1024


int currentLED = 0;

struct ntpc_server_conn_s g_server_conn[2];

// Write the value of given gpio port.
void gpio_write(int port, int value) {
    char str[4];
    static char devpath[16];
    snprintf(devpath, 16, "/dev/gpio%d", port);
    int fd = open(devpath, O_RDWR);

    ioctl(fd, GPIOIOC_SET_DIRECTION, GPIO_DIRECTION_OUT);
    write(fd, str, snprintf(str, 4, "%d", value != 0) + 1);

    close(fd);
}

void led_on(){
	gpio_write(29,1);
}

void led_off(){
	gpio_write(29,0);
}


static void ntp_link_error(void)
{
	printf("ntp_link_error() callback is called.\n");
}


int main(int argc, FAR char *argv[])
{

    bool wifiConnected = false;

    // for NTP Client
    memset(&g_server_conn, 0, sizeof(g_server_conn));
    g_server_conn[0].hostname = "0.asia.pool.ntp.org";
    g_server_conn[0].port = 123;
    g_server_conn[1].hostname = "1.asia.pool.ntp.org";
    g_server_conn[1].port = 123;

    int ret;

    while(!wifiConnected) {
        if (start_wifi_interface() == SLSI_STATUS_ERROR) {
            printf("Connect Wi-Fi failed. Try Again.\n");
        }
        else {
            wifiConnected = true;

        }
    }

    printf("Connect to Wi-Fi success\n");

    bool mqttConnected = false;
    bool ipObtained = false;
    printf("Get IP address\n");

    struct dhcpc_state state;
    void *dhcp_handle;

    while(!ipObtained) {
        dhcp_handle = dhcpc_open(NET_DEVNAME);
        ret = dhcpc_request(dhcp_handle, &state);
        dhcpc_close(dhcp_handle);

        if (ret != OK) {
            printf("Failed to get IP address\n");
            printf("Try again\n");
            sleep(1);
        }
        else {
            ipObtained = true;
        }
    }
    netlib_set_ipv4addr(NET_DEVNAME, &state.ipaddr);
    netlib_set_ipv4netmask(NET_DEVNAME, &state.netmask);
    netlib_set_dripv4addr(NET_DEVNAME, &state.default_router);

    printf("IP address  %s\n", inet_ntoa(state.ipaddr));

    up_mdelay(2000);

    int ret_ntp = ntpc_start(g_server_conn, 2, 1000, ntp_link_error);
    printf("ret: %d\n", ret_ntp);

    ////////////////////////////////////////////////////////////
    // UDP Socket
    int sock;
    int server_addr_size;

    struct sockaddr_in server_addr;

    char buff_rcv[BUFF_SIZE+5];

    sock = socket(PF_INET, SOCK_DGRAM, 0);
    if(sock == -1){
    	printf("socket 생성 실패\n");
    	exit(1);
    }

    memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family     = AF_INET;		//sin_family주소 체계 AF_INET 인터넷 주소 체계
    server_addr.sin_port       = htons(SERVER_PORT);	//sin_port :16비트 포트 번호
    server_addr.sin_addr.s_addr= inet_addr(SERVER_ADDR);	//sin_addr: 32비트 IP주소
    														//inet_addr(const char*cp): 숫자와 점으로 이루어진 IP문자열을 long 형 숫자 IP 주소를 구함
    sleep(2);


    // Connect to the WiFi network for Internet connectivity
    printf("CoAP client tutorial\n");

    // CoAP Packet
    coap_packet_t packet[1];

    // Read analog signal using ADC
	int fd;
	struct adc_msg_s sample;
	size_t readsize;
	ssize_t nbytes;
	int publishedVal = -1;


	fd = open("/dev/adc0", O_RDONLY);
	if (fd < 0) {
		printf("%s: open failed: %d\n", __func__, errno);
		return 0;
	}


	uint8_t *buffer = (uint8_t*)malloc(sizeof(uint8_t)*256);
	buffer[0] = 64; buffer[1] = 1; //CODE : 0000 0001 : GET Method
	buffer[2] = 0; buffer[3] = 0;


	buffer[4] = 97;	buffer[5] = 0;

	buffer[6] = 84; buffer[7] = 'v'; buffer[8] = '1'; buffer[9] = '.'; buffer[10] = '1';

	buffer[11] = 7; buffer[12] = 'a'; buffer[13] = 'c'; buffer[14] = 't'; buffer[15] = 'i';
					buffer[16] = 'o'; buffer[17] = 'n'; buffer[18] = 's';

    buffer[19] = 1; buffer[20] = '4';


	//buffer[21] = 255;


	int send = sendto(sock, (const char*)buffer, 21, 0, (struct sockaddr*)&server_addr, sizeof(server_addr));
	printf("Send Observe message %d bytes\n", send);
	int i=0;

	if(send == -1){
		printf("Failure to send : %s\n", strerror(errno));
	}
	printf("\n");

	int led_bool = 0;

	while(1) {
		sleep(1);

		printf("receiving....\n");
		int received_length = recvfrom(sock, buff_rcv, BUFF_SIZE, 0 ,(struct sockaddr*)&server_addr, &server_addr_size);
		printf("received length : %d\n", received_length);
		sleep(1);

		//payload start point
		int payload_point=0; //Payload Marker
		while(1){
			if(buff_rcv[payload_point] == 255){
				payload_point = payload_point + 1;
				break;
			}else{
				payload_point = payload_point + 1;
			}
			if(payload_point > received_length){
				printf("Get Payload Error\n");
				exit(-1);
			}
		}

		int k=0;
		printf("buff_rcv: ");
		while(1){
			printf("%d ",buff_rcv[k]);
			k++;
			if(k==received_length){
				break;
			}
		}


	    // Set the payload
	    const char *payload = (char*)malloc(sizeof(char)*256);

	    // Copy payload
	    memcpy(payload, &buff_rcv[payload_point], received_length - payload_point);
	    printf("receive_length: %d\n", received_length);
	    printf("payload_point: %d\n", payload_point);
	    printf("payload: ");
	    int j=0;
	    while(1){
	    	printf("%c ", payload[j]);
	    	j++;
	    	if(j == received_length - payload_point){
	    		break;
	    	}
	    }
		printf("\n");

		char *parseArr[10] = {NULL, };

		char *ptr =strtok(payload, "\",:,{,}");

		int p = 0;
		while(ptr != NULL){
			parseArr[p] = ptr;
			p++;

			ptr = strtok(NULL, "\",:,{,}");
		}
		printf("LED parsed: %s\n", parseArr[6]);

	    const char *led = (char*)malloc(sizeof(char)*256);
	    sprintf(led, "%s", parseArr[6]);
		printf("LED var: %s\n", led);


		if (strcmp(led, "true") == 0){ //brightness 300이상->1로 바꿈!
			led_on();
		}else{
			led_off();
		}

		printf("value by LED: %d\n", led_bool);
	}



    return 0;


}
