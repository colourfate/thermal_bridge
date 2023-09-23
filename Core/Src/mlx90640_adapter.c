/*
 * mlx90640_i2c_adapter.c
 *
 *  Created on: Aug 10, 2023
 *	  Author: colourfate
 */
#include "i2c.h"
#include "common.h"
#include "mlx90640_adapter.h"

#define MLX90640_I2C_ADDR 0x33
#define TA_SHIFT 8

enum REFRESHRATE{
	FPS2HZ = 0x02,
	FPS4HZ = 0x03,
	FPS8HZ = 0x04,
	FPS16HZ = 0x05,
	FPS32HZ = 0x06
};

void MLX90640_I2CInit(void) {};
int MLX90640_I2CGeneralReset(void) { return 0; };
void MLX90640_I2CFreqSet(int freq) {};

int MLX90640_I2CRead(uint8_t slaveAddr, uint16_t startAddress, uint16_t nMemAddressRead, uint16_t *data)
{
	HAL_StatusTypeDef ret;
	uint32_t i;
	uint8_t *p = (uint8_t *)data;

	ret = HAL_I2C_Mem_Read(&hi2c1, (slaveAddr << 1), startAddress, I2C_MEMADD_SIZE_16BIT, p, nMemAddressRead * 2, 1000);
	if (ret != HAL_OK) {
		perr("HAL_I2C_Mem_Read failed\r\n");
		return HAL_ERROR;
	}

	for (i = 0; i < nMemAddressRead * 2; i += 2) {
		uint8_t tmp = p[i + 1];

		p[i + 1] = p[i];
		p[i] = tmp;
	}

	return HAL_OK;
}

int MLX90640_I2CWrite(uint8_t slaveAddr,uint16_t writeAddress, uint16_t data)
{
	HAL_StatusTypeDef ret;
	uint8_t cmd[2];

	cmd[0] = data >> 8;
	cmd[1] = data & 0x00FF;

	ret = HAL_I2C_Mem_Write(&hi2c1, (slaveAddr << 1), writeAddress, I2C_MEMADD_SIZE_16BIT, cmd, sizeof(cmd), 1000);
	if (ret != HAL_OK) {
		perr("HAL_I2C_Mem_Write failed\r\n");
		return HAL_ERROR;
	}

	return HAL_OK;
}


static paramsMLX90640 g_mlx90640_param;

void mlx_param_init(void)
{
	int status;
	static uint16_t g_eeMLX90640[832];

	MX_I2C1_Init();

	status = MLX90640_SetRefreshRate(MLX90640_I2C_ADDR, FPS16HZ);
	if (status != 0) {
		perr("Set refresh rate failed\r\n");
		return;
	}

	status = MLX90640_SetChessMode(MLX90640_I2C_ADDR);
	if (status != 0) {
		perr("Set chess mode failed\r\n");
		return;
	}

	status = MLX90640_DumpEE(MLX90640_I2C_ADDR, g_eeMLX90640);
	if (status != 0) {
		perr("Failed to load system parameters\r\n");
		return;
	}

	printf("dump: \r\n");
	for (int i = 0; i < 16; i++) {
		printf("%d: %x\r\n", i, g_eeMLX90640[i]);
	}
	printf("sizeof(g_mlx90640_param) = %d \r\n", sizeof(g_mlx90640_param));

	status = MLX90640_ExtractParameters(g_eeMLX90640, &g_mlx90640_param);
	if (status != 0) {
		perr("Parameter extraction failed: %d\r\n", status);
		return;
	}

	pinfo("kVdd: %d\r\n", g_mlx90640_param.kVdd);
	pinfo("vdd25: %d\r\n", g_mlx90640_param.vdd25);
	pinfo("KvPTAT: %f\r\n", g_mlx90640_param.KvPTAT);
	pinfo("KtPTAT: %f\r\n", g_mlx90640_param.KtPTAT);
	pinfo("vPTAT25: %d\r\n", g_mlx90640_param.vPTAT25);
}

void mlx_data_read(float data[MLX90640_PIXEL_NUM])
{
	uint32_t start;

	//Read both subpages
	for (int x = 0 ; x < 2 ; x++) {
		static uint16_t g_mlx90640Frame[834];
		int status;

		start = HAL_GetTick();
		status = MLX90640_GetFrameData(MLX90640_I2C_ADDR, g_mlx90640Frame);
		if (status < 0) {
			perr("GetFrame Error: %d\r\n", status);
		}
		pinfo("get frame: %ld\r\n", HAL_GetTick() - start);


		/* float vdd = MLX90640_GetVdd(g_mlx90640Frame, &g_mlx90640_param); */
		float Ta = MLX90640_GetTa(g_mlx90640Frame, &g_mlx90640_param);

		float tr = Ta - TA_SHIFT; //Reflected temperature based on the sensor ambient temperature
		float emissivity = 0.95;
		start = HAL_GetTick();
		MLX90640_CalculateTo(g_mlx90640Frame, &g_mlx90640_param, emissivity, tr, data);
		pinfo("calculate: %ld\r\n", HAL_GetTick() - start);
	}
}
