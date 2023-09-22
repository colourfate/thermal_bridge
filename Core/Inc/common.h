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
#define pinfo(fmt, args...) printf("%s(%d): " fmt, __func__, __LINE__, ##args)

#define HAL_FMPI2C_MODULE_ENABLED

/**
  * @brief Inter-integrated Circuit Interface
  */

typedef struct
{
  __IO uint32_t CR1;         /*!< FMPI2C Control register 1,            Address offset: 0x00 */
  __IO uint32_t CR2;         /*!< FMPI2C Control register 2,            Address offset: 0x04 */
  __IO uint32_t OAR1;        /*!< FMPI2C Own address 1 register,        Address offset: 0x08 */
  __IO uint32_t OAR2;        /*!< FMPI2C Own address 2 register,        Address offset: 0x0C */
  __IO uint32_t TIMINGR;     /*!< FMPI2C Timing register,               Address offset: 0x10 */
  __IO uint32_t TIMEOUTR;    /*!< FMPI2C Timeout register,              Address offset: 0x14 */
  __IO uint32_t ISR;         /*!< FMPI2C Interrupt and status register, Address offset: 0x18 */
  __IO uint32_t ICR;         /*!< FMPI2C Interrupt clear register,      Address offset: 0x1C */
  __IO uint32_t PECR;        /*!< FMPI2C PEC register,                  Address offset: 0x20 */
  __IO uint32_t RXDR;        /*!< FMPI2C Receive data register,         Address offset: 0x24 */
  __IO uint32_t TXDR;        /*!< FMPI2C Transmit data register,        Address offset: 0x28 */
} FMPI2C_TypeDef;

/******************  Bit definition for SYSCFG_CFGR register  *****************/
#define SYSCFG_CFGR_FMPI2C1_SCL_Pos          (0U)
#define SYSCFG_CFGR_FMPI2C1_SCL_Msk          (0x1UL << SYSCFG_CFGR_FMPI2C1_SCL_Pos) /*!< 0x00000001 */
#define SYSCFG_CFGR_FMPI2C1_SCL              SYSCFG_CFGR_FMPI2C1_SCL_Msk       /*!<FM+ drive capability for FMPI2C1_SCL pin */
#define SYSCFG_CFGR_FMPI2C1_SDA_Pos          (1U)
#define SYSCFG_CFGR_FMPI2C1_SDA_Msk          (0x1UL << SYSCFG_CFGR_FMPI2C1_SDA_Pos) /*!< 0x00000002 */
#define SYSCFG_CFGR_FMPI2C1_SDA              SYSCFG_CFGR_FMPI2C1_SDA_Msk       /*!<FM+ drive capability for FMPI2C1_SDA pin */

/******************************************************************************/
/*                                                                            */
/*        Fast Mode Plus Inter-integrated Circuit Interface (I2C)             */
/*                                                                            */
/******************************************************************************/
/*******************  Bit definition for I2C_CR1 register  *******************/
#define FMPI2C_CR1_PE_Pos               (0U)
#define FMPI2C_CR1_PE_Msk               (0x1UL << FMPI2C_CR1_PE_Pos)            /*!< 0x00000001 */
#define FMPI2C_CR1_PE                   FMPI2C_CR1_PE_Msk                      /*!< Peripheral enable                   */
#define FMPI2C_CR1_TXIE_Pos             (1U)
#define FMPI2C_CR1_TXIE_Msk             (0x1UL << FMPI2C_CR1_TXIE_Pos)          /*!< 0x00000002 */
#define FMPI2C_CR1_TXIE                 FMPI2C_CR1_TXIE_Msk                    /*!< TX interrupt enable                 */
#define FMPI2C_CR1_RXIE_Pos             (2U)
#define FMPI2C_CR1_RXIE_Msk             (0x1UL << FMPI2C_CR1_RXIE_Pos)          /*!< 0x00000004 */
#define FMPI2C_CR1_RXIE                 FMPI2C_CR1_RXIE_Msk                    /*!< RX interrupt enable                 */
#define FMPI2C_CR1_ADDRIE_Pos           (3U)
#define FMPI2C_CR1_ADDRIE_Msk           (0x1UL << FMPI2C_CR1_ADDRIE_Pos)        /*!< 0x00000008 */
#define FMPI2C_CR1_ADDRIE               FMPI2C_CR1_ADDRIE_Msk                  /*!< Address match interrupt enable      */
#define FMPI2C_CR1_NACKIE_Pos           (4U)
#define FMPI2C_CR1_NACKIE_Msk           (0x1UL << FMPI2C_CR1_NACKIE_Pos)        /*!< 0x00000010 */
#define FMPI2C_CR1_NACKIE               FMPI2C_CR1_NACKIE_Msk                  /*!< NACK received interrupt enable      */
#define FMPI2C_CR1_STOPIE_Pos           (5U)
#define FMPI2C_CR1_STOPIE_Msk           (0x1UL << FMPI2C_CR1_STOPIE_Pos)        /*!< 0x00000020 */
#define FMPI2C_CR1_STOPIE               FMPI2C_CR1_STOPIE_Msk                  /*!< STOP detection interrupt enable     */
#define FMPI2C_CR1_TCIE_Pos             (6U)
#define FMPI2C_CR1_TCIE_Msk             (0x1UL << FMPI2C_CR1_TCIE_Pos)          /*!< 0x00000040 */
#define FMPI2C_CR1_TCIE                 FMPI2C_CR1_TCIE_Msk                    /*!< Transfer complete interrupt enable  */
#define FMPI2C_CR1_ERRIE_Pos            (7U)
#define FMPI2C_CR1_ERRIE_Msk            (0x1UL << FMPI2C_CR1_ERRIE_Pos)         /*!< 0x00000080 */
#define FMPI2C_CR1_ERRIE                FMPI2C_CR1_ERRIE_Msk                   /*!< Errors interrupt enable             */
#define FMPI2C_CR1_DNF_Pos              (8U)
#define FMPI2C_CR1_DNF_Msk              (0xFUL << FMPI2C_CR1_DNF_Pos)           /*!< 0x00000F00 */
#define FMPI2C_CR1_DNF                  FMPI2C_CR1_DNF_Msk                     /*!< Digital noise filter                */
#define FMPI2C_CR1_ANFOFF_Pos           (12U)
#define FMPI2C_CR1_ANFOFF_Msk           (0x1UL << FMPI2C_CR1_ANFOFF_Pos)        /*!< 0x00001000 */
#define FMPI2C_CR1_ANFOFF               FMPI2C_CR1_ANFOFF_Msk                  /*!< Analog noise filter OFF             */
#define FMPI2C_CR1_TXDMAEN_Pos          (14U)
#define FMPI2C_CR1_TXDMAEN_Msk          (0x1UL << FMPI2C_CR1_TXDMAEN_Pos)       /*!< 0x00004000 */
#define FMPI2C_CR1_TXDMAEN              FMPI2C_CR1_TXDMAEN_Msk                 /*!< DMA transmission requests enable    */
#define FMPI2C_CR1_RXDMAEN_Pos          (15U)
#define FMPI2C_CR1_RXDMAEN_Msk          (0x1UL << FMPI2C_CR1_RXDMAEN_Pos)       /*!< 0x00008000 */
#define FMPI2C_CR1_RXDMAEN              FMPI2C_CR1_RXDMAEN_Msk                 /*!< DMA reception requests enable       */
#define FMPI2C_CR1_SBC_Pos              (16U)
#define FMPI2C_CR1_SBC_Msk              (0x1UL << FMPI2C_CR1_SBC_Pos)           /*!< 0x00010000 */
#define FMPI2C_CR1_SBC                  FMPI2C_CR1_SBC_Msk                     /*!< Slave byte control                  */
#define FMPI2C_CR1_NOSTRETCH_Pos        (17U)
#define FMPI2C_CR1_NOSTRETCH_Msk        (0x1UL << FMPI2C_CR1_NOSTRETCH_Pos)     /*!< 0x00020000 */
#define FMPI2C_CR1_NOSTRETCH            FMPI2C_CR1_NOSTRETCH_Msk               /*!< Clock stretching disable            */
#define FMPI2C_CR1_GCEN_Pos             (19U)
#define FMPI2C_CR1_GCEN_Msk             (0x1UL << FMPI2C_CR1_GCEN_Pos)          /*!< 0x00080000 */
#define FMPI2C_CR1_GCEN                 FMPI2C_CR1_GCEN_Msk                    /*!< General call enable                 */
#define FMPI2C_CR1_SMBHEN_Pos           (20U)
#define FMPI2C_CR1_SMBHEN_Msk           (0x1UL << FMPI2C_CR1_SMBHEN_Pos)        /*!< 0x00100000 */
#define FMPI2C_CR1_SMBHEN               FMPI2C_CR1_SMBHEN_Msk                  /*!< SMBus host address enable           */
#define FMPI2C_CR1_SMBDEN_Pos           (21U)
#define FMPI2C_CR1_SMBDEN_Msk           (0x1UL << FMPI2C_CR1_SMBDEN_Pos)        /*!< 0x00200000 */
#define FMPI2C_CR1_SMBDEN               FMPI2C_CR1_SMBDEN_Msk                  /*!< SMBus device default address enable */
#define FMPI2C_CR1_ALERTEN_Pos          (22U)
#define FMPI2C_CR1_ALERTEN_Msk          (0x1UL << FMPI2C_CR1_ALERTEN_Pos)       /*!< 0x00400000 */
#define FMPI2C_CR1_ALERTEN              FMPI2C_CR1_ALERTEN_Msk                 /*!< SMBus alert enable                  */
#define FMPI2C_CR1_PECEN_Pos            (23U)
#define FMPI2C_CR1_PECEN_Msk            (0x1UL << FMPI2C_CR1_PECEN_Pos)         /*!< 0x00800000 */
#define FMPI2C_CR1_PECEN                FMPI2C_CR1_PECEN_Msk                   /*!< PEC enable                          */

/* Legacy Defines */
#define FMPI2C_CR1_DFN_Pos              FMPI2C_CR1_DNF_Pos
#define FMPI2C_CR1_DFN_Msk              FMPI2C_CR1_DNF_Msk
#define FMPI2C_CR1_DFN                  FMPI2C_CR1_DNF
/******************  Bit definition for I2C_CR2 register  ********************/
#define FMPI2C_CR2_SADD_Pos             (0U)
#define FMPI2C_CR2_SADD_Msk             (0x3FFUL << FMPI2C_CR2_SADD_Pos)        /*!< 0x000003FF */
#define FMPI2C_CR2_SADD                 FMPI2C_CR2_SADD_Msk                    /*!< Slave address (master mode)                             */
#define FMPI2C_CR2_RD_WRN_Pos           (10U)
#define FMPI2C_CR2_RD_WRN_Msk           (0x1UL << FMPI2C_CR2_RD_WRN_Pos)        /*!< 0x00000400 */
#define FMPI2C_CR2_RD_WRN               FMPI2C_CR2_RD_WRN_Msk                  /*!< Transfer direction (master mode)                        */
#define FMPI2C_CR2_ADD10_Pos            (11U)
#define FMPI2C_CR2_ADD10_Msk            (0x1UL << FMPI2C_CR2_ADD10_Pos)         /*!< 0x00000800 */
#define FMPI2C_CR2_ADD10                FMPI2C_CR2_ADD10_Msk                   /*!< 10-bit addressing mode (master mode)                    */
#define FMPI2C_CR2_HEAD10R_Pos          (12U)
#define FMPI2C_CR2_HEAD10R_Msk          (0x1UL << FMPI2C_CR2_HEAD10R_Pos)       /*!< 0x00001000 */
#define FMPI2C_CR2_HEAD10R              FMPI2C_CR2_HEAD10R_Msk                 /*!< 10-bit address header only read direction (master mode) */
#define FMPI2C_CR2_START_Pos            (13U)
#define FMPI2C_CR2_START_Msk            (0x1UL << FMPI2C_CR2_START_Pos)         /*!< 0x00002000 */
#define FMPI2C_CR2_START                FMPI2C_CR2_START_Msk                   /*!< START generation                                        */
#define FMPI2C_CR2_STOP_Pos             (14U)
#define FMPI2C_CR2_STOP_Msk             (0x1UL << FMPI2C_CR2_STOP_Pos)          /*!< 0x00004000 */
#define FMPI2C_CR2_STOP                 FMPI2C_CR2_STOP_Msk                    /*!< STOP generation (master mode)                           */
#define FMPI2C_CR2_NACK_Pos             (15U)
#define FMPI2C_CR2_NACK_Msk             (0x1UL << FMPI2C_CR2_NACK_Pos)          /*!< 0x00008000 */
#define FMPI2C_CR2_NACK                 FMPI2C_CR2_NACK_Msk                    /*!< NACK generation (slave mode)                            */
#define FMPI2C_CR2_NBYTES_Pos           (16U)
#define FMPI2C_CR2_NBYTES_Msk           (0xFFUL << FMPI2C_CR2_NBYTES_Pos)       /*!< 0x00FF0000 */
#define FMPI2C_CR2_NBYTES               FMPI2C_CR2_NBYTES_Msk                  /*!< Number of bytes                                         */
#define FMPI2C_CR2_RELOAD_Pos           (24U)
#define FMPI2C_CR2_RELOAD_Msk           (0x1UL << FMPI2C_CR2_RELOAD_Pos)        /*!< 0x01000000 */
#define FMPI2C_CR2_RELOAD               FMPI2C_CR2_RELOAD_Msk                  /*!< NBYTES reload mode                                      */
#define FMPI2C_CR2_AUTOEND_Pos          (25U)
#define FMPI2C_CR2_AUTOEND_Msk          (0x1UL << FMPI2C_CR2_AUTOEND_Pos)       /*!< 0x02000000 */
#define FMPI2C_CR2_AUTOEND              FMPI2C_CR2_AUTOEND_Msk                 /*!< Automatic end mode (master mode)                        */
#define FMPI2C_CR2_PECBYTE_Pos          (26U)
#define FMPI2C_CR2_PECBYTE_Msk          (0x1UL << FMPI2C_CR2_PECBYTE_Pos)       /*!< 0x04000000 */
#define FMPI2C_CR2_PECBYTE              FMPI2C_CR2_PECBYTE_Msk                 /*!< Packet error checking byte                              */

/*******************  Bit definition for I2C_OAR1 register  ******************/
#define FMPI2C_OAR1_OA1_Pos             (0U)
#define FMPI2C_OAR1_OA1_Msk             (0x3FFUL << FMPI2C_OAR1_OA1_Pos)        /*!< 0x000003FF */
#define FMPI2C_OAR1_OA1                 FMPI2C_OAR1_OA1_Msk                    /*!< Interface own address 1   */
#define FMPI2C_OAR1_OA1MODE_Pos         (10U)
#define FMPI2C_OAR1_OA1MODE_Msk         (0x1UL << FMPI2C_OAR1_OA1MODE_Pos)      /*!< 0x00000400 */
#define FMPI2C_OAR1_OA1MODE             FMPI2C_OAR1_OA1MODE_Msk                /*!< Own address 1 10-bit mode */
#define FMPI2C_OAR1_OA1EN_Pos           (15U)
#define FMPI2C_OAR1_OA1EN_Msk           (0x1UL << FMPI2C_OAR1_OA1EN_Pos)        /*!< 0x00008000 */
#define FMPI2C_OAR1_OA1EN               FMPI2C_OAR1_OA1EN_Msk                  /*!< Own address 1 enable      */

/*******************  Bit definition for I2C_OAR2 register  ******************/
#define FMPI2C_OAR2_OA2_Pos             (1U)
#define FMPI2C_OAR2_OA2_Msk             (0x7FUL << FMPI2C_OAR2_OA2_Pos)         /*!< 0x000000FE */
#define FMPI2C_OAR2_OA2                 FMPI2C_OAR2_OA2_Msk                    /*!< Interface own address 2 */
#define FMPI2C_OAR2_OA2MSK_Pos          (8U)
#define FMPI2C_OAR2_OA2MSK_Msk          (0x7UL << FMPI2C_OAR2_OA2MSK_Pos)       /*!< 0x00000700 */
#define FMPI2C_OAR2_OA2MSK              FMPI2C_OAR2_OA2MSK_Msk                 /*!< Own address 2 masks     */
#define FMPI2C_OAR2_OA2EN_Pos           (15U)
#define FMPI2C_OAR2_OA2EN_Msk           (0x1UL << FMPI2C_OAR2_OA2EN_Pos)        /*!< 0x00008000 */
#define FMPI2C_OAR2_OA2EN               FMPI2C_OAR2_OA2EN_Msk                  /*!< Own address 2 enable    */

/*******************  Bit definition for I2C_TIMINGR register *******************/
#define FMPI2C_TIMINGR_SCLL_Pos         (0U)
#define FMPI2C_TIMINGR_SCLL_Msk         (0xFFUL << FMPI2C_TIMINGR_SCLL_Pos)     /*!< 0x000000FF */
#define FMPI2C_TIMINGR_SCLL             FMPI2C_TIMINGR_SCLL_Msk                /*!< SCL low period (master mode)  */
#define FMPI2C_TIMINGR_SCLH_Pos         (8U)
#define FMPI2C_TIMINGR_SCLH_Msk         (0xFFUL << FMPI2C_TIMINGR_SCLH_Pos)     /*!< 0x0000FF00 */
#define FMPI2C_TIMINGR_SCLH             FMPI2C_TIMINGR_SCLH_Msk                /*!< SCL high period (master mode) */
#define FMPI2C_TIMINGR_SDADEL_Pos       (16U)
#define FMPI2C_TIMINGR_SDADEL_Msk       (0xFUL << FMPI2C_TIMINGR_SDADEL_Pos)    /*!< 0x000F0000 */
#define FMPI2C_TIMINGR_SDADEL           FMPI2C_TIMINGR_SDADEL_Msk              /*!< Data hold time                */
#define FMPI2C_TIMINGR_SCLDEL_Pos       (20U)
#define FMPI2C_TIMINGR_SCLDEL_Msk       (0xFUL << FMPI2C_TIMINGR_SCLDEL_Pos)    /*!< 0x00F00000 */
#define FMPI2C_TIMINGR_SCLDEL           FMPI2C_TIMINGR_SCLDEL_Msk              /*!< Data setup time               */
#define FMPI2C_TIMINGR_PRESC_Pos        (28U)
#define FMPI2C_TIMINGR_PRESC_Msk        (0xFUL << FMPI2C_TIMINGR_PRESC_Pos)     /*!< 0xF0000000 */
#define FMPI2C_TIMINGR_PRESC            FMPI2C_TIMINGR_PRESC_Msk               /*!< Timings prescaler             */

/******************* Bit definition for I2C_TIMEOUTR register *******************/
#define FMPI2C_TIMEOUTR_TIMEOUTA_Pos    (0U)
#define FMPI2C_TIMEOUTR_TIMEOUTA_Msk    (0xFFFUL << FMPI2C_TIMEOUTR_TIMEOUTA_Pos) /*!< 0x00000FFF */
#define FMPI2C_TIMEOUTR_TIMEOUTA        FMPI2C_TIMEOUTR_TIMEOUTA_Msk           /*!< Bus timeout A                 */
#define FMPI2C_TIMEOUTR_TIDLE_Pos       (12U)
#define FMPI2C_TIMEOUTR_TIDLE_Msk       (0x1UL << FMPI2C_TIMEOUTR_TIDLE_Pos)    /*!< 0x00001000 */
#define FMPI2C_TIMEOUTR_TIDLE           FMPI2C_TIMEOUTR_TIDLE_Msk              /*!< Idle clock timeout detection  */
#define FMPI2C_TIMEOUTR_TIMOUTEN_Pos    (15U)
#define FMPI2C_TIMEOUTR_TIMOUTEN_Msk    (0x1UL << FMPI2C_TIMEOUTR_TIMOUTEN_Pos) /*!< 0x00008000 */
#define FMPI2C_TIMEOUTR_TIMOUTEN        FMPI2C_TIMEOUTR_TIMOUTEN_Msk           /*!< Clock timeout enable          */
#define FMPI2C_TIMEOUTR_TIMEOUTB_Pos    (16U)
#define FMPI2C_TIMEOUTR_TIMEOUTB_Msk    (0xFFFUL << FMPI2C_TIMEOUTR_TIMEOUTB_Pos) /*!< 0x0FFF0000 */
#define FMPI2C_TIMEOUTR_TIMEOUTB        FMPI2C_TIMEOUTR_TIMEOUTB_Msk           /*!< Bus timeout B                 */
#define FMPI2C_TIMEOUTR_TEXTEN_Pos      (31U)
#define FMPI2C_TIMEOUTR_TEXTEN_Msk      (0x1UL << FMPI2C_TIMEOUTR_TEXTEN_Pos)   /*!< 0x80000000 */
#define FMPI2C_TIMEOUTR_TEXTEN          FMPI2C_TIMEOUTR_TEXTEN_Msk             /*!< Extended clock timeout enable */

/******************  Bit definition for I2C_ISR register  *********************/
#define FMPI2C_ISR_TXE_Pos              (0U)
#define FMPI2C_ISR_TXE_Msk              (0x1UL << FMPI2C_ISR_TXE_Pos)           /*!< 0x00000001 */
#define FMPI2C_ISR_TXE                  FMPI2C_ISR_TXE_Msk                     /*!< Transmit data register empty     */
#define FMPI2C_ISR_TXIS_Pos             (1U)
#define FMPI2C_ISR_TXIS_Msk             (0x1UL << FMPI2C_ISR_TXIS_Pos)          /*!< 0x00000002 */
#define FMPI2C_ISR_TXIS                 FMPI2C_ISR_TXIS_Msk                    /*!< Transmit interrupt status        */
#define FMPI2C_ISR_RXNE_Pos             (2U)
#define FMPI2C_ISR_RXNE_Msk             (0x1UL << FMPI2C_ISR_RXNE_Pos)          /*!< 0x00000004 */
#define FMPI2C_ISR_RXNE                 FMPI2C_ISR_RXNE_Msk                    /*!< Receive data register not empty  */
#define FMPI2C_ISR_ADDR_Pos             (3U)
#define FMPI2C_ISR_ADDR_Msk             (0x1UL << FMPI2C_ISR_ADDR_Pos)          /*!< 0x00000008 */
#define FMPI2C_ISR_ADDR                 FMPI2C_ISR_ADDR_Msk                    /*!< Address matched (slave mode)     */
#define FMPI2C_ISR_NACKF_Pos            (4U)
#define FMPI2C_ISR_NACKF_Msk            (0x1UL << FMPI2C_ISR_NACKF_Pos)         /*!< 0x00000010 */
#define FMPI2C_ISR_NACKF                FMPI2C_ISR_NACKF_Msk                   /*!< NACK received flag               */
#define FMPI2C_ISR_STOPF_Pos            (5U)
#define FMPI2C_ISR_STOPF_Msk            (0x1UL << FMPI2C_ISR_STOPF_Pos)         /*!< 0x00000020 */
#define FMPI2C_ISR_STOPF                FMPI2C_ISR_STOPF_Msk                   /*!< STOP detection flag              */
#define FMPI2C_ISR_TC_Pos               (6U)
#define FMPI2C_ISR_TC_Msk               (0x1UL << FMPI2C_ISR_TC_Pos)            /*!< 0x00000040 */
#define FMPI2C_ISR_TC                   FMPI2C_ISR_TC_Msk                      /*!< Transfer complete (master mode)  */
#define FMPI2C_ISR_TCR_Pos              (7U)
#define FMPI2C_ISR_TCR_Msk              (0x1UL << FMPI2C_ISR_TCR_Pos)           /*!< 0x00000080 */
#define FMPI2C_ISR_TCR                  FMPI2C_ISR_TCR_Msk                     /*!< Transfer complete reload         */
#define FMPI2C_ISR_BERR_Pos             (8U)
#define FMPI2C_ISR_BERR_Msk             (0x1UL << FMPI2C_ISR_BERR_Pos)          /*!< 0x00000100 */
#define FMPI2C_ISR_BERR                 FMPI2C_ISR_BERR_Msk                    /*!< Bus error                        */
#define FMPI2C_ISR_ARLO_Pos             (9U)
#define FMPI2C_ISR_ARLO_Msk             (0x1UL << FMPI2C_ISR_ARLO_Pos)          /*!< 0x00000200 */
#define FMPI2C_ISR_ARLO                 FMPI2C_ISR_ARLO_Msk                    /*!< Arbitration lost                 */
#define FMPI2C_ISR_OVR_Pos              (10U)
#define FMPI2C_ISR_OVR_Msk              (0x1UL << FMPI2C_ISR_OVR_Pos)           /*!< 0x00000400 */
#define FMPI2C_ISR_OVR                  FMPI2C_ISR_OVR_Msk                     /*!< Overrun/Underrun                 */
#define FMPI2C_ISR_PECERR_Pos           (11U)
#define FMPI2C_ISR_PECERR_Msk           (0x1UL << FMPI2C_ISR_PECERR_Pos)        /*!< 0x00000800 */
#define FMPI2C_ISR_PECERR               FMPI2C_ISR_PECERR_Msk                  /*!< PEC error in reception           */
#define FMPI2C_ISR_TIMEOUT_Pos          (12U)
#define FMPI2C_ISR_TIMEOUT_Msk          (0x1UL << FMPI2C_ISR_TIMEOUT_Pos)       /*!< 0x00001000 */
#define FMPI2C_ISR_TIMEOUT              FMPI2C_ISR_TIMEOUT_Msk                 /*!< Timeout or Tlow detection flag   */
#define FMPI2C_ISR_ALERT_Pos            (13U)
#define FMPI2C_ISR_ALERT_Msk            (0x1UL << FMPI2C_ISR_ALERT_Pos)         /*!< 0x00002000 */
#define FMPI2C_ISR_ALERT                FMPI2C_ISR_ALERT_Msk                   /*!< SMBus alert                      */
#define FMPI2C_ISR_BUSY_Pos             (15U)
#define FMPI2C_ISR_BUSY_Msk             (0x1UL << FMPI2C_ISR_BUSY_Pos)          /*!< 0x00008000 */
#define FMPI2C_ISR_BUSY                 FMPI2C_ISR_BUSY_Msk                    /*!< Bus busy                         */
#define FMPI2C_ISR_DIR_Pos              (16U)
#define FMPI2C_ISR_DIR_Msk              (0x1UL << FMPI2C_ISR_DIR_Pos)           /*!< 0x00010000 */
#define FMPI2C_ISR_DIR                  FMPI2C_ISR_DIR_Msk                     /*!< Transfer direction (slave mode)  */
#define FMPI2C_ISR_ADDCODE_Pos          (17U)
#define FMPI2C_ISR_ADDCODE_Msk          (0x7FUL << FMPI2C_ISR_ADDCODE_Pos)      /*!< 0x00FE0000 */
#define FMPI2C_ISR_ADDCODE              FMPI2C_ISR_ADDCODE_Msk                 /*!< Address match code (slave mode)  */

/******************  Bit definition for I2C_ICR register  *********************/
#define FMPI2C_ICR_ADDRCF_Pos           (3U)
#define FMPI2C_ICR_ADDRCF_Msk           (0x1UL << FMPI2C_ICR_ADDRCF_Pos)        /*!< 0x00000008 */
#define FMPI2C_ICR_ADDRCF               FMPI2C_ICR_ADDRCF_Msk                  /*!< Address matched clear flag  */
#define FMPI2C_ICR_NACKCF_Pos           (4U)
#define FMPI2C_ICR_NACKCF_Msk           (0x1UL << FMPI2C_ICR_NACKCF_Pos)        /*!< 0x00000010 */
#define FMPI2C_ICR_NACKCF               FMPI2C_ICR_NACKCF_Msk                  /*!< NACK clear flag             */
#define FMPI2C_ICR_STOPCF_Pos           (5U)
#define FMPI2C_ICR_STOPCF_Msk           (0x1UL << FMPI2C_ICR_STOPCF_Pos)        /*!< 0x00000020 */
#define FMPI2C_ICR_STOPCF               FMPI2C_ICR_STOPCF_Msk                  /*!< STOP detection clear flag   */
#define FMPI2C_ICR_BERRCF_Pos           (8U)
#define FMPI2C_ICR_BERRCF_Msk           (0x1UL << FMPI2C_ICR_BERRCF_Pos)        /*!< 0x00000100 */
#define FMPI2C_ICR_BERRCF               FMPI2C_ICR_BERRCF_Msk                  /*!< Bus error clear flag        */
#define FMPI2C_ICR_ARLOCF_Pos           (9U)
#define FMPI2C_ICR_ARLOCF_Msk           (0x1UL << FMPI2C_ICR_ARLOCF_Pos)        /*!< 0x00000200 */
#define FMPI2C_ICR_ARLOCF               FMPI2C_ICR_ARLOCF_Msk                  /*!< Arbitration lost clear flag */
#define FMPI2C_ICR_OVRCF_Pos            (10U)
#define FMPI2C_ICR_OVRCF_Msk            (0x1UL << FMPI2C_ICR_OVRCF_Pos)         /*!< 0x00000400 */
#define FMPI2C_ICR_OVRCF                FMPI2C_ICR_OVRCF_Msk                   /*!< Overrun/Underrun clear flag */
#define FMPI2C_ICR_PECCF_Pos            (11U)
#define FMPI2C_ICR_PECCF_Msk            (0x1UL << FMPI2C_ICR_PECCF_Pos)         /*!< 0x00000800 */
#define FMPI2C_ICR_PECCF                FMPI2C_ICR_PECCF_Msk                   /*!< PAC error clear flag        */
#define FMPI2C_ICR_TIMOUTCF_Pos         (12U)
#define FMPI2C_ICR_TIMOUTCF_Msk         (0x1UL << FMPI2C_ICR_TIMOUTCF_Pos)      /*!< 0x00001000 */
#define FMPI2C_ICR_TIMOUTCF             FMPI2C_ICR_TIMOUTCF_Msk                /*!< Timeout clear flag          */
#define FMPI2C_ICR_ALERTCF_Pos          (13U)
#define FMPI2C_ICR_ALERTCF_Msk          (0x1UL << FMPI2C_ICR_ALERTCF_Pos)       /*!< 0x00002000 */
#define FMPI2C_ICR_ALERTCF              FMPI2C_ICR_ALERTCF_Msk                 /*!< Alert clear flag            */

/******************  Bit definition for I2C_PECR register  *********************/
#define FMPI2C_PECR_PEC_Pos             (0U)
#define FMPI2C_PECR_PEC_Msk             (0xFFUL << FMPI2C_PECR_PEC_Pos)         /*!< 0x000000FF */
#define FMPI2C_PECR_PEC                 FMPI2C_PECR_PEC_Msk                    /*!< PEC register */

/******************  Bit definition for I2C_RXDR register  *********************/
#define FMPI2C_RXDR_RXDATA_Pos          (0U)
#define FMPI2C_RXDR_RXDATA_Msk          (0xFFUL << FMPI2C_RXDR_RXDATA_Pos)      /*!< 0x000000FF */
#define FMPI2C_RXDR_RXDATA              FMPI2C_RXDR_RXDATA_Msk                 /*!< 8-bit receive data */

/******************  Bit definition for I2C_TXDR register  *********************/
#define FMPI2C_TXDR_TXDATA_Pos          (0U)
#define FMPI2C_TXDR_TXDATA_Msk          (0xFFUL << FMPI2C_TXDR_TXDATA_Pos)      /*!< 0x000000FF */
#define FMPI2C_TXDR_TXDATA              FMPI2C_TXDR_TXDATA_Msk                 /*!< 8-bit transmit data */

#endif /* INC_COMMON_H_ */
