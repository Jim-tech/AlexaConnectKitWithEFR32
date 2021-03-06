/*
 * Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * 
 * You may not use this file except in compliance with the terms and conditions set forth in the
 * accompanying LICENSE.TXT file. THESE MATERIALS ARE PROVIDED ON AN "AS IS" BASIS. AMAZON SPECIFICALLY
 * DISCLAIMS, WITH RESPECT TO THESE MATERIALS, ALL WARRANTIES, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT.
 */

#ifndef __ACK_CIRCULARBUFFER_H__
#define __ACK_CIRCULARBUFFER_H__

#include "ack_user_config.h"
#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C"
{
#endif

// Opaque -- do not use directly.
typedef enum _ACKCircularBufferState_t
{
	CircularBuffer_Empty,
	CircularBuffer_Full,
	CircularBuffer_Partial
}
ACKCircularBufferState_t;

// This size can be overridden in e.g. ack_user_config.h.
#ifndef ACK_CIRCULAR_BUFFER_SIZE
#define ACK_CIRCULAR_BUFFER_SIZE 32
#endif

// All members in this structure are opaque. Use the functions provided to access
// the circular buffer.
typedef struct _ACKCircularBuffer_t
{
	uint8_t buffer[ACK_CIRCULAR_BUFFER_SIZE];

    // These are offsets into buffer, and so ACK_CIRCULAR_BUFFER_SIZE must be <= 255.
    #if ACK_CIRCULAR_BUFFER_SIZE > 255
    #error ACK_CIRCULAR_BUFFER_SIZE must fit in a byte
    #endif
	uint8_t tail;
	uint8_t head;
	ACKCircularBufferState_t bufferState;
}
ACKCircularBuffer_t;

void ACK_InitializeCircularBuffer(volatile ACKCircularBuffer_t* pCircularBuffer);
bool ACK_InsertIntoCircularBuffer(volatile ACKCircularBuffer_t* pCircularBuffer, uint8_t x);
bool ACK_ReadFromCircularBuffer(volatile ACKCircularBuffer_t* pCircularBuffer, uint8_t* pX);

#ifdef __cplusplus
}
#endif

#endif // def __ACK_CIRCULARBUFFER_H__
