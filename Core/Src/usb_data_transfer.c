/*
 * usb_data_transfer.c
 *
 *  Created on: Sep 23, 2023
 *      Author: colourfate
 */
#include "usbd_cdc_if.h"
#include "common.h"

#define DATA_EOF_LEN 2

static uint8_t g_usb_tx_buffer[APP_TX_DATA_SIZE];
static uint32_t g_data_len;

int usb_data_store_f(float *data, uint32_t data_len)
{
	uint32_t packet_len = data_len * 2 + DATA_EOF_LEN;
	uint32_t i;

	if (packet_len > count_of(g_usb_tx_buffer)) {
		perr("Data len %ld must < %d\r\n", packet_len, count_of(g_usb_tx_buffer));
		return -1;
	}
	g_data_len = packet_len;

	memset(g_usb_tx_buffer, 0, g_data_len);
	for (i = 0; i < data_len; i++) {
		int16_t tmp = (int16_t)(data[i] * 100);

		g_usb_tx_buffer[2 * i] = (uint8_t)((uint16_t)tmp >> 8);
		g_usb_tx_buffer[2 * i + 1] = (uint8_t)tmp;
	}
	g_usb_tx_buffer[2 * i] = 0x80;
	g_usb_tx_buffer[2 * i + 1] = 0;

	return 0;
}

void usb_data_send(void)
{
	uint32_t start;

	start = HAL_GetTick();
	CDC_Transmit_FS(g_usb_tx_buffer, g_data_len);
	pinfo("send data: %ld\r\n", HAL_GetTick() - start);
}
