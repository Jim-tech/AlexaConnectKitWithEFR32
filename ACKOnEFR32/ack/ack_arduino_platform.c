/*
 * Copyright 2018-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * You may not use this file except in compliance with the terms and conditions set forth in the
 * accompanying LICENSE.TXT file. THESE MATERIALS ARE PROVIDED ON AN "AS IS" BASIS. AMAZON SPECIFICALLY
 * DISCLAIMS, WITH RESPECT TO THESE MATERIALS, ALL WARRANTIES, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT.
 */

// Implementations of all platform-specific routines (declared in ack_user_platform.h) for Arduino.

#include "ack.h"
#include "ack_core_power_saving.h"
#include "ack_crc32.h"
#include <stdarg.h>

#include "stdio.h"
#include "sl_sleeptimer.h"
#include "em_gpio.h"
#include "sl_iostream.h"
#include "sl_iostream_handles.h"
#include "sl_simple_led_instances.h"
#include "sl_simple_rgb_pwm_led_instances.h"
#include "sl_simple_button_instances.h"

typedef struct __PlatformPinMap
{
    uint8_t  pinPort;
    uint8_t  pinID;
}PlatformPinMap;

const PlatformPinMap ThunderBoard2PinMap[ACK_HW_PIN_BUTT] =
{
    [ACK_HW_PIN_HOST_INTERRUPT] = {gpioPortA, 6},
    [ACK_HW_PIN_MODULE_RESET] = {gpioPortA, 7},
    [ACK_HW_PIN_SAMPLE_APPLICATIONS_LED] = {gpioPortD, 9},
};

void ACKPlatform_Initialize()
{
    GPIO_PinModeSet(gpioPortJ, 14, gpioModePushPull, 1);
//    GPIO_PinModeSet(gpioPortI, 0, gpioModePushPull, 1);
//    GPIO_PinModeSet(gpioPortI, 1, gpioModePushPull, 1);
    GPIO_PinModeSet(gpioPortI, 2, gpioModePushPull, 1);
//    GPIO_PinModeSet(gpioPortI, 3, gpioModePushPull, 1);

    GPIO_PinModeSet(ThunderBoard2PinMap[ACK_HW_PIN_HOST_INTERRUPT].pinPort,
                    ThunderBoard2PinMap[ACK_HW_PIN_HOST_INTERRUPT].pinID,
                    gpioModeInputPull,
                    1);
    GPIO_PinModeSet(ThunderBoard2PinMap[ACK_HW_PIN_MODULE_RESET].pinPort,
                    ThunderBoard2PinMap[ACK_HW_PIN_MODULE_RESET].pinID,
                    gpioModePushPull,
                    1);

    sl_led_turn_off(&sl_led_led0);
    sl_led_turn_off(&sl_inst0);
}

uint32_t ACKPlatform_TickCount(void)
{
    uint64_t ms;

    sl_sleeptimer_tick64_to_ms(sl_sleeptimer_get_tick_count64(), &ms);

    return (uint32_t)ms;
}

void ACKPlatform_Delay(uint32_t milliseconds)
{
    sl_sleeptimer_delay_millisecond(milliseconds);
}

uint32_t millis()
{
    return ACKPlatform_TickCount();
}

void ACKPlatform_WriteDigitalPin(ACKHardwarePin_t pin, bool state)
{
    if (pin >= sizeof(ThunderBoard2PinMap)/sizeof(PlatformPinMap)) {
        //impossible branch
        return;
    }

    if (state)
    {
        GPIO_PinOutSet(ThunderBoard2PinMap[pin].pinPort, ThunderBoard2PinMap[pin].pinID);
    }
    else
    {
        GPIO_PinOutClear(ThunderBoard2PinMap[pin].pinPort, ThunderBoard2PinMap[pin].pinID);
    }
}

bool ACKPlatform_ReadDigitalPin(ACKHardwarePin_t pin)
{
    return 0 != GPIO_PinInGet(ThunderBoard2PinMap[pin].pinPort, ThunderBoard2PinMap[pin].pinID);
}

void ACKPlatform_SetDigitalPinPWMLevel(ACKHardwarePin_t pin, uint8_t val)
{
    // Despite the name, analogWrite isn't about digital-to-analog conversion; it's used for PWM.
    //    analogWrite(sg_arduinoDigitalPins[pin], val);
    if (ACK_HW_PIN_SAMPLE_APPLICATIONS_LED != pin)
    {
        return;
    }

    if (0 == val) {
        sl_led_turn_off(&sl_led_led0);
        sl_led_turn_off(&sl_inst0);
    } else {
        sl_led_turn_on(&sl_led_led0);
        sl_led_set_rgb_color(&sl_inst0, 65535 * val / 100, 0, 65535);
        sl_led_turn_on(&sl_inst0);
    }
}

bool ACKPlatform_Send(const void *buffer, size_t length, uint32_t timeoutMilliseconds)
{
    size_t i = 0;
    uint32_t startTime = millis();
    sl_status_t status;

    for (i = 0; i < length; ++i)
    {
        if ((millis() - startTime) >= timeoutMilliseconds)
        {
            return false;
        }

        status = sl_iostream_write(sl_iostream_ack_handle, &((const uint8_t *)buffer)[i], 1);
        if (status != SL_STATUS_OK)
        {
//            printf("[**!!**]write data to ACK fail status=0x%x \r\n", status);
            return false;
        }
    }

    return true;
}

bool ACKPlatform_Receive(void *pBuffer, size_t length, uint32_t timeoutMilliseconds)
{
    size_t bytesRead = 0;
    uint32_t startTime = millis();
    sl_status_t status;
    size_t read_len;

    // Note that the timeout check is carefully constructed to work even if millis() wraps.
    while ((bytesRead < length) && ((millis() - startTime) < timeoutMilliseconds))
    {
        status = sl_iostream_read(sl_iostream_ack_handle, &((uint8_t *)pBuffer)[bytesRead], 1, &read_len);
        if (status == SL_STATUS_OK)
        {
            bytesRead++;
        }
        else if (status != SL_STATUS_EMPTY)
        {
//            printf("[**!!**]read data from ACK fail status=0x%x \r\n", status);
            break;
        }
    }

    return bytesRead == length;
}

void ACKPlatform_DrainRead()
{
    sl_status_t status;

    while (1)
    {
        uint8_t byte;
        size_t read_len;

        status = sl_iostream_read(sl_iostream_ack_handle, &byte, 1, &read_len);
        if (status != SL_STATUS_OK)
        {
            break;
        }
    }
}

volatile bool g_ugs_enabled = false;
volatile bool g_commit_log = false;

void sl_button_on_change(const sl_button_t *handle)
{
  if (sl_button_get_state(handle) == SL_SIMPLE_BUTTON_PRESSED) {
    if (&sl_button_btn1 == handle) {
        sl_led_turn_on(&sl_led_led1);
        g_ugs_enabled = true;
//        printf("[**!!**] button 1 pressed \r\n");
    }

    if (&sl_button_btn0 == handle) {
        g_commit_log = true;
//        printf("[**!!**] button 0 pressed \r\n");
    }
  }
}

uint32_t ACKPlatform_CalculateCrc32(const void *pInput, size_t length)
{
    return ACK_CalculateCrc32(pInput, length);
}

void ACKPlatform_DebugPrint(const char *pMessage)
{
    printf(pMessage);
}

#ifdef ACK_HOST_FIRMWARE_UPDATE

bool ACKPlatform_StartHostFirmwareUpdate(uint32_t size, uint32_t targetAddress, uint32_t crc32)
{
    return false;
}

bool ACKPlatform_SaveHostFirmwareUpdateChunk(uint32_t startOffset, const uint8_t *pData, uint32_t size)
{
    return false;
}

bool ACKPlatform_HostFirmwareUpdateSuccessfullyRetrieved(void)
{
    return false;
}

void ACKPlatform_HostFirmwareUpdateFailed(void)
{
}

void ACKPlatform_ApplyHostFirmwareUpdate(void)
{
}

#endif // def ACK_HOST_FIRMWARE_UPDATE
