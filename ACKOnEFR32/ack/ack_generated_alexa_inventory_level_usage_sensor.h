// This code was generated by a tool on Fri, 16 Apr 2021 23:14:56 GMT.
// DO NOT EDIT MANUALLY.

// Instruction artifact: 'Alexa.InventoryLevelUsageSensor'.

#ifndef __ACK_GENERATED_ALEXA_INVENTORY_LEVEL_USAGE_SENSOR_H__
#define __ACK_GENERATED_ALEXA_INVENTORY_LEVEL_USAGE_SENSOR_H__

#ifdef __cplusplus
extern "C"
{
#endif

typedef enum _ack_alexa_inventory_level_usage_sensor_inventory_replaced_event_payload_object_member
{
    ack_alexa_inventory_level_usage_sensor_inventory_replaced_event_payload_object_member_replaced_date = 1
}
ack_alexa_inventory_level_usage_sensor_inventory_replaced_event_payload_object_member;

typedef enum _ack_alexa_inventory_level_usage_sensor_event_name
{
    ack_alexa_inventory_level_usage_sensor_event_name_inventory_consumed = 1,
    ack_alexa_inventory_level_usage_sensor_event_name_inventory_replaced = 2
}
ack_alexa_inventory_level_usage_sensor_event_name;

typedef enum _ack_alexa_inventory_level_usage_sensor_inventory_consumed_event_payload_object_member
{
    ack_alexa_inventory_level_usage_sensor_inventory_consumed_event_payload_object_member_usage = 1,
    ack_alexa_inventory_level_usage_sensor_inventory_consumed_event_payload_object_member_time_of_sample = 2
}
ack_alexa_inventory_level_usage_sensor_inventory_consumed_event_payload_object_member;

#ifdef __cplusplus
}
#endif

#endif // ndef __ACK_GENERATED_ALEXA_INVENTORY_LEVEL_USAGE_SENSOR_H__
