#ifndef PIN_CONFIG_H
#define PIN_CONFIG_H

// $[ACMP0]
// [ACMP0]$

// $[ACMP1]
// [ACMP1]$

// $[ADC0]
// [ADC0]$

// $[CMU]
// [CMU]$

// $[DBG]
// [DBG]$

// $[ETM]
// [ETM]$

// $[PTI]
// [PTI]$

// $[GPIO]
// [GPIO]$

// $[I2C0]
// [I2C0]$

// $[I2C1]
// I2C1 SCL on PC5
#define I2C1_SCL_PORT                            gpioPortC
#define I2C1_SCL_PIN                             5
#define I2C1_SCL_LOC                             17

// I2C1 SDA on PC4
#define I2C1_SDA_PORT                            gpioPortC
#define I2C1_SDA_PIN                             4
#define I2C1_SDA_LOC                             17

// [I2C1]$

// $[IDAC0]
// [IDAC0]$

// $[LESENSE]
// [LESENSE]$

// $[LETIMER0]
// [LETIMER0]$

// $[LEUART0]
// [LEUART0]$

// $[LFXO]
// [LFXO]$

// $[MODEM]
// [MODEM]$

// $[PCNT0]
// [PCNT0]$

// $[PCNT1]
// [PCNT1]$

// $[PCNT2]
// [PCNT2]$

// $[PRS.CH0]
// [PRS.CH0]$

// $[PRS.CH1]
// [PRS.CH1]$

// $[PRS.CH2]
// [PRS.CH2]$

// $[PRS.CH3]
// [PRS.CH3]$

// $[PRS.CH4]
// [PRS.CH4]$

// $[PRS.CH5]
// [PRS.CH5]$

// $[PRS.CH6]
// [PRS.CH6]$

// $[PRS.CH7]
// [PRS.CH7]$

// $[PRS.CH8]
// [PRS.CH8]$

// $[PRS.CH9]
// [PRS.CH9]$

// $[PRS.CH10]
// [PRS.CH10]$

// $[PRS.CH11]
// [PRS.CH11]$

// $[TIMER0]
// [TIMER0]$

// $[TIMER1]
// TIMER1 CC0 on PD11
#define TIMER1_CC0_PORT                          gpioPortD
#define TIMER1_CC0_PIN                           11
#define TIMER1_CC0_LOC                           19

// TIMER1 CC1 on PD12
#define TIMER1_CC1_PORT                          gpioPortD
#define TIMER1_CC1_PIN                           12
#define TIMER1_CC1_LOC                           19

// TIMER1 CC2 on PD13
#define TIMER1_CC2_PORT                          gpioPortD
#define TIMER1_CC2_PIN                           13
#define TIMER1_CC2_LOC                           19

// [TIMER1]$

// $[USART0]
// USART0 CTS on PA2
#define USART0_CTS_PORT                          gpioPortA
#define USART0_CTS_PIN                           2
#define USART0_CTS_LOC                           30

// USART0 RTS on PA3
#define USART0_RTS_PORT                          gpioPortA
#define USART0_RTS_PIN                           3
#define USART0_RTS_LOC                           30

// USART0 RX on PA1
#define USART0_RX_PORT                           gpioPortA
#define USART0_RX_PIN                            1
#define USART0_RX_LOC                            0

// USART0 TX on PA0
#define USART0_TX_PORT                           gpioPortA
#define USART0_TX_PIN                            0
#define USART0_TX_LOC                            0

// [USART0]$

// $[USART1]
// USART1 RX on PF4
#define USART1_RX_PORT                           gpioPortF
#define USART1_RX_PIN                            4
#define USART1_RX_LOC                            27

// USART1 TX on PF3
#define USART1_TX_PORT                           gpioPortF
#define USART1_TX_PIN                            3
#define USART1_TX_LOC                            27

// [USART1]$

// $[USART2]
// [USART2]$

// $[USART3]
// [USART3]$

// $[VDAC0]
// [VDAC0]$

// $[WTIMER0]
// [WTIMER0]$

// $[WTIMER1]
// [WTIMER1]$

// $[CUSTOM_PIN_NAME]
// [CUSTOM_PIN_NAME]$

#endif // PIN_CONFIG_H

