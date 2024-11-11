output "alicloud_amqp_exchange_id" {
  value       = module.example.alicloud_amqp_exchange_id
  description = "The id of the exchange."
}

output "alicloud_amqp_queue_id" {
  value       = module.example.alicloud_amqp_queue_id
  description = "The id of the queue."
}

output "alicloud_amqp_virtual_host_id" {
  value       = module.example.alicloud_amqp_virtual_host_id
  description = "The id of the virtual host."
}

output "this_instance_message_output_alarm_rule_id" {
  value       = module.example.this_instance_message_output_alarm_rule_id
  description = "The id of the alarm rule."
}