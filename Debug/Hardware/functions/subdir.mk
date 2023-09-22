################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hardware/functions/MLX90640_API.c 

OBJS += \
./Hardware/functions/MLX90640_API.o 

C_DEPS += \
./Hardware/functions/MLX90640_API.d 


# Each subdirectory must supply rules for building sources it contributes
Hardware/functions/%.o Hardware/functions/%.su Hardware/functions/%.cyclo: ../Hardware/functions/%.c Hardware/functions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -DARM_MATH_CM4 -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/Workspace/stm32/ThermalBridge3/Hardware/headers" -I"D:/Workspace/stm32/ThermalBridge3/CMSIS_DSP/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Hardware-2f-functions

clean-Hardware-2f-functions:
	-$(RM) ./Hardware/functions/MLX90640_API.cyclo ./Hardware/functions/MLX90640_API.d ./Hardware/functions/MLX90640_API.o ./Hardware/functions/MLX90640_API.su

.PHONY: clean-Hardware-2f-functions

