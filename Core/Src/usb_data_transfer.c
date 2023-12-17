/*
 * usb_data_transfer.c
 *
 *  Created on: Sep 23, 2023
 *      Author: colourfate
 */
#include "usbd_cdc_if.h"
#include "common.h"

#define DATA_EOF_LEN 2
#define USB_DATA_HEAD 0x8000

enum {
	USB_DATA_TYPE_CMD_FPS,
	USB_DATA_TYPE_DATA,
};

typedef struct {
	uint16_t header;
	uint16_t type;
	uint16_t len;
	uint8_t data[0];
} usb_data_format;

static uint8_t g_usb_tx_buffer[APP_TX_DATA_SIZE];
static usb_data_format *g_packet = (usb_data_format *)g_usb_tx_buffer;


int usb_data_store_f(float *data, uint32_t data_len)
{
	uint32_t packet_len = data_len * 2 + sizeof(usb_data_format);
	uint32_t i;

	if (packet_len > count_of(g_usb_tx_buffer)) {
		perr("Data len %ld must < %d\r\n", packet_len, count_of(g_usb_tx_buffer));
		return -1;
	}

	memset(g_usb_tx_buffer, 0, count_of(g_usb_tx_buffer));
	g_packet->header = USB_DATA_HEAD;
	g_packet->type = USB_DATA_TYPE_DATA;
	g_packet->len = data_len * 2;
	for (i = 0; i < data_len; i++) {
		*((uint16_t *)(&g_packet->data[2 * i])) = (uint16_t)(data[i] * 100);
	}


	return 0;
}

void usb_data_send(void)
{
	uint32_t start;

	start = HAL_GetTick();
	CDC_Transmit_FS((uint8_t *)g_packet, g_packet->len + sizeof(usb_data_format));
	pinfo("send data: %ld\r\n", HAL_GetTick() - start);
}
