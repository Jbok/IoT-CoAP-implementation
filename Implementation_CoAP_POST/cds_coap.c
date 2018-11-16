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
    server_addr.sin_family     = AF_INET;					//sin_family주소 체계 AF_INET 인터넷 주소 체계
    server_addr.sin_port       = htons(SERVER_PORT);				//sin_port :16비트 포트 번호
    server_addr.sin_addr.s_addr= inet_addr(SERVER_ADDR);//sin_addr: 32비트 IP주소
    														//inet_addr(const char*cp): 숫자와 점으로 이루어진 IP문자열을 long 형 숫자 IP 주소를 구함
    sleep(2);


    // Connect to the WiFi network for Internet connectivity
    printf("CoAP client tutorial\n");

    // CoAP Packet
    coap_packet_t packet[1];


    // Set the payload
    const char *payload = (char*)malloc(sizeof(char)*256);

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

	int mid = 0;
	while(1) {

		ret = ioctl(fd, ANIOC_TRIGGER, 0);
		if (ret < 0) {
			printf("%s: ioctl failed: %d\n", __func__, errno);
			close(fd);
			return 0;
		}
		readsize = sizeof(struct adc_msg_s);

		// adc_msg_s structure returns the data structure containing analog readings from ADC pins
		nbytes = read(fd, &sample, readsize);
		if (nbytes < 0) {
			if (errno != EINTR) {
				printf("%s: read failed: %d\n", __func__, errno);
				close(fd);
				return 0;
			}
		} else if (nbytes == 0) {
			printf("%s: No data read, Ignoring\n");
		} else { // nbytes > 0
			int nsamples = nbytes / sizeof(struct adc_msg_s);
			if (nsamples * sizeof(struct adc_msg_s) != nbytes) {
				printf("%s: read size=%ld is not a multiple of sample size=%d, Ignoring\n", __func__, (long)nbytes, sizeof(struct adc_msg_s));
			} else {
				// Filter the data obtained from only ADC pin connected to the sensor A0 - 0, A1 - 1, A2 - 2, A3 - 3
				if ((sample.am_channel == 0) && ((sample.am_data > (publishedVal + 100)) || (sample.am_data < (publishedVal - 100)))) // A0 ADC
				{
					printf("cds value: %d\n",sample.am_data);
					sprintf(payload, "%d}", sample.am_data);

					uint8_t *buffer = (uint8_t*)malloc(sizeof(uint8_t)*256);
					buffer[0] = 64; buffer[1] = 2;
					buffer[2] = (int)(mid/255); buffer[3] = mid%255;

					buffer[4] = 180; 	buffer[5] = 'v'; buffer[6] = '1'; buffer[7] = '.'; buffer[8] = '1';

					buffer[9] = 8; 		buffer[10] = 'm'; buffer[11] = 'e'; buffer[12] = 's'; buffer[13] = 's';
										buffer[14] = 'a'; buffer[15] = 'g'; buffer[16] = 'e'; buffer[17] = 's';

					buffer[18] =  1; 	buffer[19] = '4';

					buffer[20] = 255;	buffer[21] = '{'; buffer[22] = '"'; buffer[23] = 'b'; buffer[24] = 'r';
										buffer[25] = 'i'; buffer[26] = 'g'; buffer[27] = 'h'; buffer[28] = 't';
										buffer[29] = 'n'; buffer[30] = 'e'; buffer[31] = 's'; buffer[32] = 's';
										buffer[33] = '"'; buffer[34] = ':';

										sprintf(payload, "%d}", sample.am_data);
										int k=0;
										while(1){
											buffer[35+k]=payload[k];
											k++;
											if(k==strlen(payload)){
												break;
											}
										}

					mid++;


					sleep(1);
					int send = sendto(sock, (const char*)buffer, 35+k, 0, (struct sockaddr*)&server_addr, sizeof(server_addr));
					printf("send message %d bytes\n", send);
					int i=0;
					printf("send messages format\n");
					while(1){
						printf(" %d",buffer[i]);
						i++;
						if(i%4 == 0){
							printf("\n");}
						else{
							printf(" /");
						}
						if(i==39){
							break;
						}
					}

					if(send == -1){
						printf("Failure to send : %s\n", strerror(errno));
					}
					printf("\n");


					server_addr_size  = sizeof(server_addr);
					sleep(1);
					int recvlength = recvfrom(sock, buff_rcv, BUFF_SIZE, 0 ,(struct sockaddr*)&server_addr, &server_addr_size);

					int j=0;
					printf("ACK message format:\n");
					while(1){
						printf(" %d",buff_rcv[j]);
						j++;
						if(j%4 == 0){
							printf("\n");}
						else{
							printf(" /");
						}
						if(j==recvlength){
							break;
						}
					}
					printf("\n");

					publishedVal = sample.am_data;
				}
			}
		}

	}
    return 0;
}
