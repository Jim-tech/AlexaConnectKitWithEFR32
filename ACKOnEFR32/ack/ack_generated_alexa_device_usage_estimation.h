// This code was generated by a tool on Thu, 29 Oct 2020 17:44:43 GMT.
// DO NOT EDIT MANUALLY.

// Instruction artifact: 'Alexa.DeviceUsage.Estimation'.

#ifndef __ACK_GENERATED_ALEXA_DEVICE_USAGE_ESTIMATION_H__
#define __ACK_GENERATED_ALEXA_DEVICE_USAGE_ESTIMATION_H__

#ifdef __cplusplus
extern "C"
{
#endif

typedef enum _ack_alexa_device_usage_estimation_property_name
{
    ack_alexa_device_usage_estimation_property_name_power_profile = 1
}
ack_alexa_device_usage_estimation_property_name;

typedef enum _ack_alexa_device_usage_estimation_quantity_object_member
{
    ack_alexa_device_usage_estimation_quantity_object_member_value = 1,
    ack_alexa_device_usage_estimation_quantity_object_member_units = 2
}
ack_alexa_device_usage_estimation_quantity_object_member;

typedef enum _ack_alexa_device_usage_estimation_power_profile_payload_object_member
{
    ack_alexa_device_usage_estimation_power_profile_payload_object_member_type = 1,
    ack_alexa_device_usage_estimation_power_profile_payload_object_member_standby_wattage = 2,
    ack_alexa_device_usage_estimation_power_profile_payload_object_member_maximum_wattage = 3,
    ack_alexa_device_usage_estimation_power_profile_payload_object_member_on_wattage = 4
}
ack_alexa_device_usage_estimation_power_profile_payload_object_member;

typedef enum _ack_alexa_device_usage_estimation_profile
{
    ack_alexa_device_usage_estimation_profile_power = 1,
    ack_alexa_device_usage_estimation_profile_brightness = 2,
    ack_alexa_device_usage_estimation_profile_brightness_color = 3
}
ack_alexa_device_usage_estimation_profile;

typedef enum _ack_alexa_device_usage_estimation_units
{
    ack_alexa_device_usage_estimation_units_watts = 1
}
ack_alexa_device_usage_estimation_units;

#ifdef __cplusplus
}
#endif

#endif // ndef __ACK_GENERATED_ALEXA_DEVICE_USAGE_ESTIMATION_H__
