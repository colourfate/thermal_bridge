/*
 * usb_data_transfer.h
 *
 *  Created on: Sep 23, 2023
 *      Author: colourfate
 */

#ifndef INC_USB_DATA_TRANSFER_H_
#define INC_USB_DATA_TRANSFER_H_

#include <stdint.h>
#include <stdio.h>

typedef enum {
	USB_DATA_TYPE_CMD_FPS,
	USB_DATA_TYPE_DATA,
	USB_DATA_TYPE_LOG,
	USB_DATA_TYPE_MAX
} usb_data_type;

typedef struct {
	usb_data_type type;
	union {
		uint32_t fps;
	};
} usb_control_cmd;

void usb_transfer_init(void);
int usb_data_store_f(float *data, uint32_t data_len);
void usb_data_send(void);
int usb_get_cmd(usb_control_cmd *cmd);
void usb_printf(const char *format, ...);

#define perr(fmt, args...) usb_printf("%s(%d): " fmt, __func__, __LINE__, ##args)
#define praw usb_printf

#ifdef DEBUG
#define pinfo(fmt, args...) usb_printf("%s(%d): " fmt, __func__, __LINE__, ##args)
#else
#define pinfo(fmt, args...)
#endif

#endif /* INC_USB_DATA_TRANSFER_H_ */
