/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * 
 * You may not use this file except in compliance with the terms and conditions set forth in the
 * accompanying LICENSE.TXT file. THESE MATERIALS ARE PROVIDED ON AN "AS IS" BASIS. AMAZON SPECIFICALLY
 * DISCLAIMS, WITH RESPECT TO THESE MATERIALS, ALL WARRANTIES, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT.
 */

#ifndef __ACK_CORE_TEMPERATURE_H__
#define __ACK_CORE_TEMPERATURE_H__

#include "ack.h"
#include <stdbool.h>

#ifdef __cplusplus
extern "C"
{
#endif

// Populates a temperature object with values.
bool TemperatureSave(
    const ACKDocContainer_t* pObject,
    unsigned member,
    ack_temperature_scale scale,
    float value);

bool TemperatureLoad(
    const ACKDocContainer_t* pObject,
    unsigned member,
    ack_temperature_scale* pScale,
    float* pValue);

#ifdef __cplusplus
}
#endif

#endif // ndef __ACK_CORE_TEMPERATURE_H__
