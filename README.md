# thermal_bridge
双目手机热成像固件，通过i2c读取mlx90640传感器数据，然后打包通过USB发送

## Environment
STM32CubeIDE Version: 1.13.0

## Feature
1. mlx90640传感器初始化，读取数据并解算出温度
2. 按照数据协议将温度数据打包
3. 通过USB接口发送数据
4. 接收上位机数据并解析

## Development
通过SWD接口上传，采用SH1.0接口，线序从左至右如下，其中VCC电压3.3V
```
| GND | SWDIO | SWCLK | VCC |
```
![port](Resource/port.png)

## Change Log
20231128
 - mlx90640读取数据并解算
 - 数据打包通过USB上传

20231221
 - 修改和上位机的通信协议
 - 增加USB接收数据功能
 - 增加上位机命令解析功能
