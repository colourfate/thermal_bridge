openocd.exe -f ../scripts/interface/cmsis-dap.cfg -f ../scripts/target/stm32f4x.cfg -c init -c "reset halt; wait_halt; flash write_image erase Debug/ThermalBridge3.bin 0x08000000" -c reset -c shutdown