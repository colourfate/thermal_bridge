/*
 * usb_data_transfer.h
 *
 *  Created on: Sep 23, 2023
 *      Author: colourfate
 */

#ifndef INC_USB_DATA_TRANSFER_H_
#define INC_USB_DATA_TRANSFER_H_

int usb_data_store_f(float *data, uint32_t data_len);
void usb_data_send(void);

#endif /* INC_USB_DATA_TRANSFER_H_ */
