/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * 
 * You may not use this file except in compliance with the terms and conditions set forth in the
 * accompanying LICENSE.TXT file. THESE MATERIALS ARE PROVIDED ON AN "AS IS" BASIS. AMAZON SPECIFICALLY
 * DISCLAIMS, WITH RESPECT TO THESE MATERIALS, ALL WARRANTIES, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT.
 */

#ifndef __ACK_CORE_COUNT_H__
#define __ACK_CORE_COUNT_H__

#include "ack.h"
#include "ack_generated_count.h"
#include <stdbool.h>

#ifdef __cplusplus
extern "C"
{
#endif

bool CountLoad(const ACKDocContainer_t* pFrom, ack_count_unit* pUnit, float* pQuantity);
bool CountSave(const ACKDocContainer_t* pTo, ack_count_unit unit, float quantity);

#ifdef __cplusplus
}
#endif

#endif // ndef __ACK_CORE_COUNT_H__