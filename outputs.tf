output "alicloud_amqp_instance_id" {
  value       = alicloud_amqp_instance.default.id
  description = "The id of the amqp instance."
}

output "alicloud_amqp_virtual_host_id" {
  value       = alicloud_amqp_virtual_host.default.id
  description = "The id of the virtual host."
}

output "alicloud_amqp_exchange_id" {
  value       = alicloud_amqp_exchange.default.id
  description = "The id of the exchange."
}

output "alicloud_amqp_queue_id" {
  value       = alicloud_amqp_queue.default.id
  description = "The id of the queue."
}

# cms exchange_tps_in alarm
output "this_exchange_tps_in_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. "
  value       = concat(alicloud_cms_alarm.exchange_tps_in[*].effective_interval, [""])[0]
}

output "this_exchange_tps_in_alarm_rule_id" {
  description = "The ID of the alarm rule. "
  value       = concat(alicloud_cms_alarm.exchange_tps_in[*].id, [""])[0]
}

output "this_exchange_tps_in_alarm_rule_name" {
  description = "The alarm name. "
  value       = concat(alicloud_cms_alarm.exchange_tps_in[*].name, [""])[0]
}

output "this_exchange_tps_in_alarm_rule_project" {
  description = "Monitor project name. "
  value       = concat(alicloud_cms_alarm.exchange_tps_in[*].project, [""])[0]
}

output "this_exchange_tps_in_alarm_rule_metric" {
  description = "Name of the monitoring metrics. "
  value       = concat(alicloud_cms_alarm.exchange_tps_in[*].metric, [""])[0]
}

output "this_exchange_tps_in_alarm_rule_dimensions" {
  description = "Map of the resources associated with the alarm rule. "
  value       = concat(alicloud_cms_alarm.exchange_tps_in[*].dimensions, [""])[0]
}

output "this_exchange_tps_in_alarm_rule_period" {
  description = "Index query cycle. "
  value       = concat(alicloud_cms_alarm.exchange_tps_in[*].period, [""])[0]
}

output "this_exchange_tps_in_alarm_rule_statistics" {
  description = "Statistical method. "
  value       = concat(alicloud_cms_alarm.exchange_tps_in.escalations_critical[*].statistics, [""])[0]
}

output "this_exchange_tps_in_alarm_rule_operator" {
  description = "Alarm comparison operator. "
  value       = concat(alicloud_cms_alarm.exchange_tps_in.escalations_critical[*].comparison_operator, [""])[0]
}

output "this_exchange_tps_in_alarm_rule_threshold" {
  description = "Alarm threshold value."
  value       = concat(alicloud_cms_alarm.exchange_tps_in.escalations_critical[*].threshold, [""])[0]
}

output "this_exchange_tps_in_alarm_rule_triggered_count" {
  description = "Number of trigger alarm. "
  value       = concat(alicloud_cms_alarm.exchange_tps_in.escalations_critical[*].times, [""])[0]
}

output "this_exchange_tps_in_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule. "
  value       = concat(alicloud_cms_alarm.exchange_tps_in[*].contact_groups, [""])[0]
}

output "this_exchange_tps_in_alarm_rule_silence_time" {
  description = " Notification silence period in the alarm state. "
  value       = concat(alicloud_cms_alarm.exchange_tps_in[*].silence_time, [""])[0]
}

output "this_exchange_tps_in_alarm_rule_enabled" {
  description = "Whether to enable alarm rule. "
  value       = concat(alicloud_cms_alarm.exchange_tps_in[*].enabled, [""])[0]
}

# cms exchange_tps_out alarm
output "this_exchange_tps_out_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. "
  value       = concat(alicloud_cms_alarm.exchange_tps_out[*].effective_interval, [""])[0]
}

output "this_exchange_tps_out_alarm_rule_id" {
  description = "The ID of the alarm rule. "
  value       = concat(alicloud_cms_alarm.exchange_tps_out[*].id, [""])[0]
}

output "this_exchange_tps_out_alarm_rule_name" {
  description = "The alarm name. "
  value       = concat(alicloud_cms_alarm.exchange_tps_out[*].name, [""])[0]
}

output "this_exchange_tps_out_alarm_rule_project" {
  description = "Monitor project name. "
  value       = concat(alicloud_cms_alarm.exchange_tps_out[*].project, [""])[0]
}

output "this_exchange_tps_out_alarm_rule_metric" {
  description = "Name of the monitoring metrics. "
  value       = concat(alicloud_cms_alarm.exchange_tps_out[*].metric, [""])[0]
}

output "this_exchange_tps_out_alarm_rule_dimensions" {
  description = "Map of the resources associated with the alarm rule. "
  value       = concat(alicloud_cms_alarm.exchange_tps_out[*].dimensions, [""])[0]
}

output "this_exchange_tps_out_alarm_rule_period" {
  description = "Index query cycle. "
  value       = concat(alicloud_cms_alarm.exchange_tps_out[*].period, [""])[0]
}

output "this_exchange_tps_out_alarm_rule_statistics" {
  description = "Statistical method. "
  value       = concat(alicloud_cms_alarm.exchange_tps_out.escalations_critical[*].statistics, [""])[0]
}

output "this_exchange_tps_out_alarm_rule_operator" {
  description = "Alarm comparison operator. "
  value       = concat(alicloud_cms_alarm.exchange_tps_out.escalations_critical[*].comparison_operator, [""])[0]
}

output "this_exchange_tps_out_alarm_rule_threshold" {
  description = "Alarm threshold value."
  value       = concat(alicloud_cms_alarm.exchange_tps_out.escalations_critical[*].threshold, [""])[0]
}

output "this_exchange_tps_out_alarm_rule_triggered_count" {
  description = "Number of trigger alarm. "
  value       = concat(alicloud_cms_alarm.exchange_tps_out.escalations_critical[*].times, [""])[0]
}

output "this_exchange_tps_out_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule. "
  value       = concat(alicloud_cms_alarm.exchange_tps_out[*].contact_groups, [""])[0]
}

output "this_exchange_tps_out_alarm_rule_silence_time" {
  description = " Notification silence period in the alarm state. "
  value       = concat(alicloud_cms_alarm.exchange_tps_out[*].silence_time, [""])[0]
}

output "this_exchange_tps_out_alarm_rule_enabled" {
  description = "Whether to enable alarm rule. "
  value       = concat(alicloud_cms_alarm.exchange_tps_out[*].enabled, [""])[0]
}

# cms instance_message_input alarm
output "this_instance_message_input_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_input[*].effective_interval, [""])[0]
}

output "this_instance_message_input_alarm_rule_id" {
  description = "The ID of the alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_input[*].id, [""])[0]
}

output "this_instance_message_input_alarm_rule_name" {
  description = "The alarm name. "
  value       = concat(alicloud_cms_alarm.instance_message_input[*].name, [""])[0]
}

output "this_instance_message_input_alarm_rule_project" {
  description = "Monitor project name. "
  value       = concat(alicloud_cms_alarm.instance_message_input[*].project, [""])[0]
}

output "this_instance_message_input_alarm_rule_metric" {
  description = "Name of the monitoring metrics. "
  value       = concat(alicloud_cms_alarm.instance_message_input[*].metric, [""])[0]
}

output "this_instance_message_input_alarm_rule_dimensions" {
  description = "Map of the resources associated with the alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_input[*].dimensions, [""])[0]
}

output "this_instance_message_input_alarm_rule_period" {
  description = "Index query cycle. "
  value       = concat(alicloud_cms_alarm.instance_message_input[*].period, [""])[0]
}

output "this_instance_message_input_alarm_rule_statistics" {
  description = "Statistical method. "
  value       = concat(alicloud_cms_alarm.instance_message_input.escalations_critical[*].statistics, [""])[0]
}

output "this_instance_message_input_alarm_rule_operator" {
  description = "Alarm comparison operator. "
  value       = concat(alicloud_cms_alarm.instance_message_input.escalations_critical[*].comparison_operator, [""])[0]
}

output "this_instance_message_input_alarm_rule_threshold" {
  description = "Alarm threshold value."
  value       = concat(alicloud_cms_alarm.instance_message_input.escalations_critical[*].threshold, [""])[0]
}

output "this_instance_message_input_alarm_rule_triggered_count" {
  description = "Number of trigger alarm. "
  value       = concat(alicloud_cms_alarm.instance_message_input.escalations_critical[*].times, [""])[0]
}

output "this_instance_message_input_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_input[*].contact_groups, [""])[0]
}

output "this_instance_message_input_alarm_rule_silence_time" {
  description = " Notification silence period in the alarm state. "
  value       = concat(alicloud_cms_alarm.instance_message_input[*].silence_time, [""])[0]
}

output "this_instance_message_input_alarm_rule_enabled" {
  description = "Whether to enable alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_input[*].enabled, [""])[0]
}

# cms instance_message_output alarm
output "this_instance_message_output_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_output[*].effective_interval, [""])[0]
}

output "this_instance_message_output_alarm_rule_id" {
  description = "The ID of the alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_output[*].id, [""])[0]
}

output "this_instance_message_output_alarm_rule_name" {
  description = "The alarm name. "
  value       = concat(alicloud_cms_alarm.instance_message_output[*].name, [""])[0]
}

output "this_instance_message_output_alarm_rule_project" {
  description = "Monitor project name. "
  value       = concat(alicloud_cms_alarm.instance_message_output[*].project, [""])[0]
}

output "this_instance_message_output_alarm_rule_metric" {
  description = "Name of the monitoring metrics. "
  value       = concat(alicloud_cms_alarm.instance_message_output[*].metric, [""])[0]
}

output "this_instance_message_output_alarm_rule_dimensions" {
  description = "Map of the resources associated with the alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_output[*].dimensions, [""])[0]
}

output "this_instance_message_output_alarm_rule_period" {
  description = "Index query cycle. "
  value       = concat(alicloud_cms_alarm.instance_message_output[*].period, [""])[0]
}

output "this_instance_message_output_alarm_rule_statistics" {
  description = "Statistical method. "
  value       = concat(alicloud_cms_alarm.instance_message_output.escalations_critical[*].statistics, [""])[0]
}

output "this_instance_message_output_alarm_rule_operator" {
  description = "Alarm comparison operator. "
  value       = concat(alicloud_cms_alarm.instance_message_output.escalations_critical[*].comparison_operator, [""])[0]
}

output "this_instance_message_output_alarm_rule_threshold" {
  description = "Alarm threshold value."
  value       = concat(alicloud_cms_alarm.instance_message_output.escalations_critical[*].threshold, [""])[0]
}

output "this_instance_message_output_alarm_rule_triggered_count" {
  description = "Number of trigger alarm. "
  value       = concat(alicloud_cms_alarm.instance_message_output.escalations_critical[*].times, [""])[0]
}

output "this_instance_message_output_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_output[*].contact_groups, [""])[0]
}

output "this_instance_message_output_alarm_rule_silence_time" {
  description = " Notification silence period in the alarm state. "
  value       = concat(alicloud_cms_alarm.instance_message_output[*].silence_time, [""])[0]
}

output "this_instance_message_output_alarm_rule_enabled" {
  description = "Whether to enable alarm rule. "
  value       = concat(alicloud_cms_alarm.instance_message_output[*].enabled, [""])[0]
}

# cms queue_message_accumulation alarm
output "queue_message_accumulation_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. "
  value       = concat(alicloud_cms_alarm.queue_message_accumulation[*].effective_interval, [""])[0]
}

output "queue_message_accumulation_alarm_rule_id" {
  description = "The ID of the alarm rule. "
  value       = concat(alicloud_cms_alarm.queue_message_accumulation[*].id, [""])[0]
}

output "queue_message_accumulation_alarm_rule_name" {
  description = "The alarm name. "
  value       = concat(alicloud_cms_alarm.queue_message_accumulation[*].name, [""])[0]
}

output "queue_message_accumulation_alarm_rule_project" {
  description = "Monitor project name. "
  value       = concat(alicloud_cms_alarm.queue_message_accumulation[*].project, [""])[0]
}

output "queue_message_accumulation_alarm_rule_metric" {
  description = "Name of the monitoring metrics. "
  value       = concat(alicloud_cms_alarm.queue_message_accumulation[*].metric, [""])[0]
}

output "queue_message_accumulation_alarm_rule_dimensions" {
  description = "Map of the resources associated with the alarm rule. "
  value       = concat(alicloud_cms_alarm.queue_message_accumulation[*].dimensions, [""])[0]
}

output "queue_message_accumulation_alarm_rule_period" {
  description = "Index query cycle. "
  value       = concat(alicloud_cms_alarm.queue_message_accumulation[*].period, [""])[0]
}

output "queue_message_accumulation_alarm_rule_statistics" {
  description = "Statistical method. "
  value       = concat(alicloud_cms_alarm.queue_message_accumulation.escalations_critical[*].statistics, [""])[0]
}

output "queue_message_accumulation_alarm_rule_operator" {
  description = "Alarm comparison operator. "
  value       = concat(alicloud_cms_alarm.queue_message_accumulation.escalations_critical[*].comparison_operator, [""])[0]
}

output "queue_message_accumulation_alarm_rule_threshold" {
  description = "Alarm threshold value."
  value       = concat(alicloud_cms_alarm.queue_message_accumulation.escalations_critical[*].threshold, [""])[0]
}

output "queue_message_accumulation_alarm_rule_triggered_count" {
  description = "Number of trigger alarm. "
  value       = concat(alicloud_cms_alarm.queue_message_accumulation.escalations_critical[*].times, [""])[0]
}

output "queue_message_accumulation_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule. "
  value       = concat(alicloud_cms_alarm.queue_message_accumulation[*].contact_groups, [""])[0]
}

output "queue_message_accumulation_alarm_rule_silence_time" {
  description = " Notification silence period in the alarm state. "
  value       = concat(alicloud_cms_alarm.queue_message_accumulation[*].silence_time, [""])[0]
}

output "queue_message_accumulation_alarm_rule_enabled" {
  description = "Whether to enable alarm rule. "
  value       = concat(alicloud_cms_alarm.queue_message_accumulation[*].enabled, [""])[0]
}