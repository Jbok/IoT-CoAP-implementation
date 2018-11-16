################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/liblwm2m.c \
C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/list.c \
C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/management.c \
C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/object_server.c \
C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/objects.c \
C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/observe.c \
C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/packet.c \
C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/registration.c \
C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/tlv.c \
C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/transaction.c \
C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/uri.c \
C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/utils.c 

OBJS += \
./liblwm2m-master/liblwm2m-master/core/liblwm2m.o \
./liblwm2m-master/liblwm2m-master/core/list.o \
./liblwm2m-master/liblwm2m-master/core/management.o \
./liblwm2m-master/liblwm2m-master/core/object_server.o \
./liblwm2m-master/liblwm2m-master/core/objects.o \
./liblwm2m-master/liblwm2m-master/core/observe.o \
./liblwm2m-master/liblwm2m-master/core/packet.o \
./liblwm2m-master/liblwm2m-master/core/registration.o \
./liblwm2m-master/liblwm2m-master/core/tlv.o \
./liblwm2m-master/liblwm2m-master/core/transaction.o \
./liblwm2m-master/liblwm2m-master/core/uri.o \
./liblwm2m-master/liblwm2m-master/core/utils.o 

C_DEPS += \
./liblwm2m-master/liblwm2m-master/core/liblwm2m.d \
./liblwm2m-master/liblwm2m-master/core/list.d \
./liblwm2m-master/liblwm2m-master/core/management.d \
./liblwm2m-master/liblwm2m-master/core/object_server.d \
./liblwm2m-master/liblwm2m-master/core/objects.d \
./liblwm2m-master/liblwm2m-master/core/observe.d \
./liblwm2m-master/liblwm2m-master/core/packet.d \
./liblwm2m-master/liblwm2m-master/core/registration.d \
./liblwm2m-master/liblwm2m-master/core/tlv.d \
./liblwm2m-master/liblwm2m-master/core/transaction.d \
./liblwm2m-master/liblwm2m-master/core/uri.d \
./liblwm2m-master/liblwm2m-master/core/utils.d 


# Each subdirectory must supply rules for building sources it contributes
liblwm2m-master/liblwm2m-master/core/liblwm2m.o: C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/liblwm2m.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARTIK GCC C Compiler'
	arm-none-eabi-gcc  -D__TINYARA__ -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include/apps -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/framework_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include/netutils -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/base -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/connectivity -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/systemio -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/wifi -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/lwm2m -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/mqtt -O0 -ffunction-sections -fdata-sections -fno-builtin -fno-strict-aliasing -fno-strength-reduce -fomit-frame-pointer -Wstrict-prototypes -Wshadow -Wno-implicit-function-declaration -Wno-unused-function -Wno-unused-but-set-variable -DAPP_STACKSIZE=18432 -DAPP_PRIORITY=100 -g -DCONFIG_ARTIK_IDE_INTERGRATE -mcpu=cortex-r4 -mfpu=vfpv3 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

liblwm2m-master/liblwm2m-master/core/list.o: C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/list.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARTIK GCC C Compiler'
	arm-none-eabi-gcc  -D__TINYARA__ -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include/apps -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/framework_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include/netutils -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/base -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/connectivity -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/systemio -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/wifi -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/lwm2m -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/mqtt -O0 -ffunction-sections -fdata-sections -fno-builtin -fno-strict-aliasing -fno-strength-reduce -fomit-frame-pointer -Wstrict-prototypes -Wshadow -Wno-implicit-function-declaration -Wno-unused-function -Wno-unused-but-set-variable -DAPP_STACKSIZE=18432 -DAPP_PRIORITY=100 -g -DCONFIG_ARTIK_IDE_INTERGRATE -mcpu=cortex-r4 -mfpu=vfpv3 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

liblwm2m-master/liblwm2m-master/core/management.o: C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/management.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARTIK GCC C Compiler'
	arm-none-eabi-gcc  -D__TINYARA__ -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include/apps -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/framework_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include/netutils -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/base -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/connectivity -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/systemio -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/wifi -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/lwm2m -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/mqtt -O0 -ffunction-sections -fdata-sections -fno-builtin -fno-strict-aliasing -fno-strength-reduce -fomit-frame-pointer -Wstrict-prototypes -Wshadow -Wno-implicit-function-declaration -Wno-unused-function -Wno-unused-but-set-variable -DAPP_STACKSIZE=18432 -DAPP_PRIORITY=100 -g -DCONFIG_ARTIK_IDE_INTERGRATE -mcpu=cortex-r4 -mfpu=vfpv3 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

liblwm2m-master/liblwm2m-master/core/object_server.o: C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/object_server.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARTIK GCC C Compiler'
	arm-none-eabi-gcc  -D__TINYARA__ -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include/apps -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/framework_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include/netutils -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/base -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/connectivity -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/systemio -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/wifi -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/lwm2m -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/mqtt -O0 -ffunction-sections -fdata-sections -fno-builtin -fno-strict-aliasing -fno-strength-reduce -fomit-frame-pointer -Wstrict-prototypes -Wshadow -Wno-implicit-function-declaration -Wno-unused-function -Wno-unused-but-set-variable -DAPP_STACKSIZE=18432 -DAPP_PRIORITY=100 -g -DCONFIG_ARTIK_IDE_INTERGRATE -mcpu=cortex-r4 -mfpu=vfpv3 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

liblwm2m-master/liblwm2m-master/core/objects.o: C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/objects.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARTIK GCC C Compiler'
	arm-none-eabi-gcc  -D__TINYARA__ -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include/apps -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/framework_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include/netutils -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/base -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/connectivity -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/systemio -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/wifi -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/lwm2m -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/mqtt -O0 -ffunction-sections -fdata-sections -fno-builtin -fno-strict-aliasing -fno-strength-reduce -fomit-frame-pointer -Wstrict-prototypes -Wshadow -Wno-implicit-function-declaration -Wno-unused-function -Wno-unused-but-set-variable -DAPP_STACKSIZE=18432 -DAPP_PRIORITY=100 -g -DCONFIG_ARTIK_IDE_INTERGRATE -mcpu=cortex-r4 -mfpu=vfpv3 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

liblwm2m-master/liblwm2m-master/core/observe.o: C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/observe.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARTIK GCC C Compiler'
	arm-none-eabi-gcc  -D__TINYARA__ -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include/apps -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/framework_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include/netutils -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/base -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/connectivity -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/systemio -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/wifi -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/lwm2m -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/mqtt -O0 -ffunction-sections -fdata-sections -fno-builtin -fno-strict-aliasing -fno-strength-reduce -fomit-frame-pointer -Wstrict-prototypes -Wshadow -Wno-implicit-function-declaration -Wno-unused-function -Wno-unused-but-set-variable -DAPP_STACKSIZE=18432 -DAPP_PRIORITY=100 -g -DCONFIG_ARTIK_IDE_INTERGRATE -mcpu=cortex-r4 -mfpu=vfpv3 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

liblwm2m-master/liblwm2m-master/core/packet.o: C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/packet.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARTIK GCC C Compiler'
	arm-none-eabi-gcc  -D__TINYARA__ -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include/apps -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/framework_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include/netutils -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/base -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/connectivity -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/systemio -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/wifi -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/lwm2m -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/mqtt -O0 -ffunction-sections -fdata-sections -fno-builtin -fno-strict-aliasing -fno-strength-reduce -fomit-frame-pointer -Wstrict-prototypes -Wshadow -Wno-implicit-function-declaration -Wno-unused-function -Wno-unused-but-set-variable -DAPP_STACKSIZE=18432 -DAPP_PRIORITY=100 -g -DCONFIG_ARTIK_IDE_INTERGRATE -mcpu=cortex-r4 -mfpu=vfpv3 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

liblwm2m-master/liblwm2m-master/core/registration.o: C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/registration.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARTIK GCC C Compiler'
	arm-none-eabi-gcc  -D__TINYARA__ -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include/apps -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/framework_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include/netutils -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/base -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/connectivity -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/systemio -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/wifi -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/lwm2m -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/mqtt -O0 -ffunction-sections -fdata-sections -fno-builtin -fno-strict-aliasing -fno-strength-reduce -fomit-frame-pointer -Wstrict-prototypes -Wshadow -Wno-implicit-function-declaration -Wno-unused-function -Wno-unused-but-set-variable -DAPP_STACKSIZE=18432 -DAPP_PRIORITY=100 -g -DCONFIG_ARTIK_IDE_INTERGRATE -mcpu=cortex-r4 -mfpu=vfpv3 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

liblwm2m-master/liblwm2m-master/core/tlv.o: C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/tlv.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARTIK GCC C Compiler'
	arm-none-eabi-gcc  -D__TINYARA__ -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include/apps -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/framework_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include/netutils -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/base -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/connectivity -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/systemio -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/wifi -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/lwm2m -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/mqtt -O0 -ffunction-sections -fdata-sections -fno-builtin -fno-strict-aliasing -fno-strength-reduce -fomit-frame-pointer -Wstrict-prototypes -Wshadow -Wno-implicit-function-declaration -Wno-unused-function -Wno-unused-but-set-variable -DAPP_STACKSIZE=18432 -DAPP_PRIORITY=100 -g -DCONFIG_ARTIK_IDE_INTERGRATE -mcpu=cortex-r4 -mfpu=vfpv3 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

liblwm2m-master/liblwm2m-master/core/transaction.o: C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/transaction.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARTIK GCC C Compiler'
	arm-none-eabi-gcc  -D__TINYARA__ -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include/apps -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/framework_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include/netutils -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/base -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/connectivity -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/systemio -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/wifi -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/lwm2m -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/mqtt -O0 -ffunction-sections -fdata-sections -fno-builtin -fno-strict-aliasing -fno-strength-reduce -fomit-frame-pointer -Wstrict-prototypes -Wshadow -Wno-implicit-function-declaration -Wno-unused-function -Wno-unused-but-set-variable -DAPP_STACKSIZE=18432 -DAPP_PRIORITY=100 -g -DCONFIG_ARTIK_IDE_INTERGRATE -mcpu=cortex-r4 -mfpu=vfpv3 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

liblwm2m-master/liblwm2m-master/core/uri.o: C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/uri.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARTIK GCC C Compiler'
	arm-none-eabi-gcc  -D__TINYARA__ -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include/apps -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/framework_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include/netutils -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/base -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/connectivity -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/systemio -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/wifi -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/lwm2m -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/mqtt -O0 -ffunction-sections -fdata-sections -fno-builtin -fno-strict-aliasing -fno-strength-reduce -fomit-frame-pointer -Wstrict-prototypes -Wshadow -Wno-implicit-function-declaration -Wno-unused-function -Wno-unused-but-set-variable -DAPP_STACKSIZE=18432 -DAPP_PRIORITY=100 -g -DCONFIG_ARTIK_IDE_INTERGRATE -mcpu=cortex-r4 -mfpu=vfpv3 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

liblwm2m-master/liblwm2m-master/core/utils.o: C:/Users/bok/Desktop/liblwm2m-master/liblwm2m-master/core/utils.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARTIK GCC C Compiler'
	arm-none-eabi-gcc  -D__TINYARA__ -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/include/apps -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/framework_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/apps_include/netutils -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/base -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/connectivity -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/systemio -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/wifi -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/lwm2m -IC:/ARTIK/SDK/A05x/v1.7.1/libsdk/A053/extra/artik-sdk_include/mqtt -O0 -ffunction-sections -fdata-sections -fno-builtin -fno-strict-aliasing -fno-strength-reduce -fomit-frame-pointer -Wstrict-prototypes -Wshadow -Wno-implicit-function-declaration -Wno-unused-function -Wno-unused-but-set-variable -DAPP_STACKSIZE=18432 -DAPP_PRIORITY=100 -g -DCONFIG_ARTIK_IDE_INTERGRATE -mcpu=cortex-r4 -mfpu=vfpv3 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


