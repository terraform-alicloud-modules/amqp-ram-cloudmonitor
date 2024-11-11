#alicloud_amqp_instance
amqp_instance_name  = "update-tf-testacc-name"
amqp_max_tps        = 2000
amqp_queue_capacity = 60
amqp_support_eip    = true
amqp_max_eip_tps    = 256
amqp_modify_type    = "Upgrade"
amqp_period         = 2

#alicloud_amqp_exchange
amqp_exchang_internal = false

#ram
ram_user_password = "YourPassword123!Update"
is_admin          = false

#ExchangeTPSIn
exchange_tps_in_enable_alarm_rule             = false
exchange_tps_in_alarm_rule_name               = "update-tf-testacc-rule-name"
exchange_tps_in_alarm_rule_statistics         = "Value"
exchange_tps_in_alarm_rule_operator           = "<="
exchange_tps_in_alarm_rule_threshold          = "35"
exchange_tps_in_times                         = "5"
exchange_tps_in_alarm_rule_period             = "900"
exchange_tps_in_alarm_rule_silence_time       = 10000
exchange_tps_in_alarm_rule_effective_interval = "0:00-4:00"

#ExchangeTPSOut
exchange_tps_out_enable_alarm_rule             = false
exchange_tps_out_alarm_rule_name               = "update-tf-testacc-rule-name"
exchange_tps_out_alarm_rule_statistics         = "Value"
exchange_tps_out_alarm_rule_operator           = "<="
exchange_tps_out_alarm_rule_threshold          = "35"
exchange_tps_out_times                         = "5"
exchange_tps_out_alarm_rule_period             = "900"
exchange_tps_out_alarm_rule_silence_time       = 10000
exchange_tps_out_alarm_rule_effective_interval = "0:00-4:00"

#InstanceMessageInput
instance_message_input_enable_alarm_rule             = false
instance_message_input_alarm_rule_name               = "update-tf-testacc-rule-name"
instance_message_input_alarm_rule_statistics         = "Sum"
instance_message_input_alarm_rule_operator           = "<="
instance_message_input_alarm_rule_threshold          = "35"
instance_message_input_times                         = "5"
instance_message_input_alarm_rule_period             = "900"
instance_message_input_alarm_rule_silence_time       = 10000
instance_message_input_alarm_rule_effective_interval = "0:00-4:00"

#InstanceMessageOutput
instance_message_output_enable_alarm_rule             = false
instance_message_output_alarm_rule_name               = "update-tf-testacc-rule-name"
instance_message_output_alarm_rule_statistics         = "Sum"
instance_message_output_alarm_rule_operator           = "<="
instance_message_output_alarm_rule_threshold          = "35"
instance_message_output_times                         = "5"
instance_message_output_alarm_rule_period             = "900"
instance_message_output_alarm_rule_silence_time       = 10000
instance_message_output_alarm_rule_effective_interval = "0:00-4:00"

#QueueMessageAccumulation
queue_message_accumulation_enable_alarm_rule             = false
queue_message_accumulation_alarm_rule_name               = "update-tf-testacc-rule-name"
queue_message_accumulation_alarm_rule_statistics         = "Maximum"
queue_message_accumulation_alarm_rule_operator           = "<="
queue_message_accumulation_alarm_rule_threshold          = "35"
queue_message_accumulation_times                         = "5"
queue_message_accumulation_alarm_rule_period             = "900"
queue_message_accumulation_alarm_rule_silence_time       = 10000
queue_message_accumulation_alarm_rule_effective_interval = "0:00-4:00"