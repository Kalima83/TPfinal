################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/API/src/APILCD_port.c \
../Drivers/API/src/API_cmdparser.c \
../Drivers/API/src/API_debounce.c \
../Drivers/API/src/API_delay.c \
../Drivers/API/src/API_lcd.c \
../Drivers/API/src/API_mpu6050.c \
../Drivers/API/src/API_uart.c \
../Drivers/API/src/API_uart_port.c \
../Drivers/API/src/MPU_port.c 

OBJS += \
./Drivers/API/src/APILCD_port.o \
./Drivers/API/src/API_cmdparser.o \
./Drivers/API/src/API_debounce.o \
./Drivers/API/src/API_delay.o \
./Drivers/API/src/API_lcd.o \
./Drivers/API/src/API_mpu6050.o \
./Drivers/API/src/API_uart.o \
./Drivers/API/src/API_uart_port.o \
./Drivers/API/src/MPU_port.o 

C_DEPS += \
./Drivers/API/src/APILCD_port.d \
./Drivers/API/src/API_cmdparser.d \
./Drivers/API/src/API_debounce.d \
./Drivers/API/src/API_delay.d \
./Drivers/API/src/API_lcd.d \
./Drivers/API/src/API_mpu6050.d \
./Drivers/API/src/API_uart.d \
./Drivers/API/src/API_uart_port.d \
./Drivers/API/src/MPU_port.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/API/src/%.o Drivers/API/src/%.su Drivers/API/src/%.cyclo: ../Drivers/API/src/%.c Drivers/API/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/danie/OneDrive/SE/PdM/PdM_workspace/TPF/Drivers/API/inc" -I"C:/Users/danie/OneDrive/SE/PdM/PdM_workspace/TPF/Drivers/API/src" -I"C:/Users/danie/OneDrive/SE/PdM/PdM_workspace/TPF/Drivers/API" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-API-2f-src

clean-Drivers-2f-API-2f-src:
	-$(RM) ./Drivers/API/src/APILCD_port.cyclo ./Drivers/API/src/APILCD_port.d ./Drivers/API/src/APILCD_port.o ./Drivers/API/src/APILCD_port.su ./Drivers/API/src/API_cmdparser.cyclo ./Drivers/API/src/API_cmdparser.d ./Drivers/API/src/API_cmdparser.o ./Drivers/API/src/API_cmdparser.su ./Drivers/API/src/API_debounce.cyclo ./Drivers/API/src/API_debounce.d ./Drivers/API/src/API_debounce.o ./Drivers/API/src/API_debounce.su ./Drivers/API/src/API_delay.cyclo ./Drivers/API/src/API_delay.d ./Drivers/API/src/API_delay.o ./Drivers/API/src/API_delay.su ./Drivers/API/src/API_lcd.cyclo ./Drivers/API/src/API_lcd.d ./Drivers/API/src/API_lcd.o ./Drivers/API/src/API_lcd.su ./Drivers/API/src/API_mpu6050.cyclo ./Drivers/API/src/API_mpu6050.d ./Drivers/API/src/API_mpu6050.o ./Drivers/API/src/API_mpu6050.su ./Drivers/API/src/API_uart.cyclo ./Drivers/API/src/API_uart.d ./Drivers/API/src/API_uart.o ./Drivers/API/src/API_uart.su ./Drivers/API/src/API_uart_port.cyclo ./Drivers/API/src/API_uart_port.d ./Drivers/API/src/API_uart_port.o ./Drivers/API/src/API_uart_port.su ./Drivers/API/src/MPU_port.cyclo ./Drivers/API/src/MPU_port.d ./Drivers/API/src/MPU_port.o ./Drivers/API/src/MPU_port.su

.PHONY: clean-Drivers-2f-API-2f-src

