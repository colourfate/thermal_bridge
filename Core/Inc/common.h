/*
 * common.h
 *
 *  Created on: Aug 11, 2023
 *      Author: colourfate
 */

#ifndef INC_COMMON_H_
#define INC_COMMON_H_

#include <stdio.h>

#define perr(fmt, args...) printf("%s(%d): " fmt, __func__, __LINE__, ##args)

#ifdef DEBUG
#define pinfo(fmt, args...) printf("%s(%d): " fmt, __func__, __LINE__, ##args)
#else
#define pinfo(fmt, args...)
#endif
#define count_of(a) (sizeof(a) / sizeof(a[0]))

#endif /* INC_COMMON_H_ */
