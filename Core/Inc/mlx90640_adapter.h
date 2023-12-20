/*
 * mlx90640_adapter.h
 *
 *  Created on: Aug 10, 2023
 *      Author: colourfate
 */

#ifndef INC_MLX90640_ADAPTER_H_
#define INC_MLX90640_ADAPTER_H_

#include "MLX90640_API.h"

void mlx_param_init(void);
// TODO: 修改为宏
void mlx_data_read(float data[768]);
int mlx_set_refresh_rate(uint32_t fps);

#endif /* INC_MLX90640_ADAPTER_H_ */
