/*
 * usb_data_transfer.c
 *
 *  Created on: Sep 23, 2023
 *      Author: colourfate
 */
#include "usb_data_transfer.h"
#include <stdarg.h>
#include "usbd_cdc_if.h"
#include "common.h"

#define DATA_EOF_LEN 2
#define USB_DATA_HEAD 0x8000

typedef struct {
	uint16_t header;
	uint16_t type;
	uint16_t len;
	uint8_t data[0];
} usb_data_format;

static uint8_t g_usb_tx_buffer[APP_TX_DATA_SIZE];
static usb_data_format *g_packet = (usb_data_format *)g_usb_tx_buffer;
static uint8_t g_receive_ok = 0;
static usb_control_cmd g_usb_cmd;

static void receive_data_parse(uint8_t* buf, uint32_t len)
{
	static usb_data_format *packet;

	packet = (usb_data_format *)buf;
	if (packet->header != USB_DATA_HEAD || packet->type >= USB_DATA_TYPE_MAX || packet->len == 0) {
		perr("get packet: header(%d), type(%d), len(%d)\r\n", packet->header, packet->type, packet->len);
		return;
	}

	memset(&g_usb_cmd, 0, sizeof(usb_control_cmd));
	g_usb_cmd.type = packet->type;
	if (packet->type == USB_DATA_TYPE_CMD_FPS && packet->len == 1) {
		g_usb_cmd.fps = packet->data[0];
	} else {
		perr("Not support packet: type(%d), len(%d)\r\n", packet->type, packet->len);
	    return;
	}

	g_receive_ok = 1;
}

void usb_transfer_init(void)
{
	CDC_Set_Receive_Callback(receive_data_parse);
}

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
	while (CDC_Transmit_FS((uint8_t *)g_packet, g_packet->len + sizeof(usb_data_format)) != USBD_OK);
	pinfo("send data: %ld\r\n", HAL_GetTick() - start);
}

int usb_get_cmd(usb_control_cmd *cmd)
{
	if (cmd == NULL) {
		perr("Param is NULL\r\n");
		return -1;
	}

	if (g_receive_ok == 0) {
		return 0;
	}

	*cmd = g_usb_cmd;
	g_receive_ok = 0;
	return 1;
}

static uint8_t raw_data[APP_TX_DATA_SIZE];

void usb_printf(const char *format, ...)
{
	usb_data_format *packet;
    va_list aptr;
    int len;

    memset(raw_data, 0, sizeof(raw_data));
    packet = (usb_data_format *)raw_data;
    va_start(aptr, format);
    len = vsprintf((char *)packet->data, format, aptr);
    va_end(aptr);

    if (len > APP_TX_DATA_SIZE - sizeof(usb_data_format)) {
        len = APP_TX_DATA_SIZE - sizeof(usb_data_format);
    }

    packet->header = USB_DATA_HEAD;
    packet->type = USB_DATA_TYPE_LOG;
    packet->len = len;

    //packet->len = 5;
    //strcpy(packet->data, "hello");
    /* blocking send */
    while (CDC_Transmit_FS(raw_data, packet->len + sizeof(usb_data_format)) != USBD_OK);
    //CDC_Transmit_FS("hello", 5);
}
