data "alicloud_regions" "default" {
  current = true
}

data "alicloud_cms_alarm_contact_groups" "default" {
}

module "example" {
  source = "../.."

  #alicloud_amqp_instance
  amqp_instance_name  = var.amqp_instance_name
  amqp_instance_type  = "professional"
  amqp_max_tps        = var.amqp_max_tps
  amqp_queue_capacity = var.amqp_queue_capacity
  amqp_support_eip    = var.amqp_support_eip
  amqp_max_eip_tps    = var.amqp_max_eip_tps
  amqp_payment_type   = "Subscription"
  amqp_modify_type    = var.amqp_modify_type
  amqp_period         = var.amqp_period

  #alicloud_amqp_virtual_host
  amqp_virtual_host_name = "tf-testacc-virtualhost-name"

  #alicloud_amqp_exchange
  amqp_exchange_auto_delete_state = true
  amqp_exchange_name              = "tf-testacc-exchange-name"
  amqp_exchange_type              = "DIRECT"
  amqp_exchang_internal           = var.amqp_exchang_internal

  #alicloud_amqp_queue
  amqp_queue_name = "tf-testacc-queue-name"

  #ram
  ram_user_name                 = "tf-testacc-ram-name"
  ram_user_password             = var.ram_user_password
  create_ram_user_login_profile = true
  create_ram_access_key         = true
  is_admin                      = var.is_admin

  #ExchangeTPSIn
  exchange_tps_in_enable_alarm_rule             = var.exchange_tps_in_enable_alarm_rule
  exchange_tps_in_alarm_rule_name               = var.exchange_tps_in_alarm_rule_name
  alarm_exchange_tps_in_metric                  = "ExchangeTPSIn"
  region_id                                     = data.alicloud_regions.default.regions[0].id
  exchange_tps_in_alarm_rule_statistics         = var.exchange_tps_in_alarm_rule_statistics
  exchange_tps_in_alarm_rule_operator           = var.exchange_tps_in_alarm_rule_operator
  exchange_tps_in_alarm_rule_threshold          = var.exchange_tps_in_alarm_rule_threshold
  exchange_tps_in_times                         = var.exchange_tps_in_times
  exchange_tps_in_alarm_rule_period             = var.exchange_tps_in_alarm_rule_period
  exchange_tps_in_alarm_rule_contact_groups     = data.alicloud_cms_alarm_contact_groups.default.names
  exchange_tps_in_alarm_rule_silence_time       = var.exchange_tps_in_alarm_rule_silence_time
  exchange_tps_in_alarm_rule_effective_interval = var.exchange_tps_in_alarm_rule_effective_interval

  #ExchangeTPSOut
  exchange_tps_out_enable_alarm_rule             = var.exchange_tps_out_enable_alarm_rule
  exchange_tps_out_alarm_rule_name               = var.exchange_tps_out_alarm_rule_name
  alarm_exchange_tps_out_metric                  = "ExchangeTPSOut"
  exchange_tps_out_alarm_rule_statistics         = var.exchange_tps_out_alarm_rule_statistics
  exchange_tps_out_alarm_rule_operator           = var.exchange_tps_out_alarm_rule_operator
  exchange_tps_out_alarm_rule_threshold          = var.exchange_tps_out_alarm_rule_threshold
  exchange_tps_out_times                         = var.exchange_tps_out_times
  exchange_tps_out_alarm_rule_period             = var.exchange_tps_out_alarm_rule_period
  exchange_tps_out_alarm_rule_contact_groups     = data.alicloud_cms_alarm_contact_groups.default.names
  exchange_tps_out_alarm_rule_silence_time       = var.exchange_tps_out_alarm_rule_silence_time
  exchange_tps_out_alarm_rule_effective_interval = var.exchange_tps_out_alarm_rule_effective_interval

  #InstanceMessageInput
  instance_message_input_enable_alarm_rule             = var.instance_message_input_enable_alarm_rule
  instance_message_input_alarm_rule_name               = var.instance_message_input_alarm_rule_name
  alarm_instance_message_input_metric                  = "InstanceMessageInput"
  instance_message_input_alarm_rule_statistics         = var.instance_message_input_alarm_rule_statistics
  instance_message_input_alarm_rule_operator           = var.instance_message_input_alarm_rule_operator
  instance_message_input_alarm_rule_threshold          = var.instance_message_input_alarm_rule_threshold
  instance_message_input_times                         = var.instance_message_input_times
  instance_message_input_alarm_rule_period             = var.instance_message_input_alarm_rule_period
  instance_message_input_alarm_rule_contact_groups     = data.alicloud_cms_alarm_contact_groups.default.names
  instance_message_input_alarm_rule_silence_time       = var.instance_message_input_alarm_rule_silence_time
  instance_message_input_alarm_rule_effective_interval = var.instance_message_input_alarm_rule_effective_interval

  #InstanceMessageOutput
  instance_message_output_enable_alarm_rule             = var.instance_message_output_enable_alarm_rule
  instance_message_output_alarm_rule_name               = var.instance_message_output_alarm_rule_name
  alarm_instance_message_output_metric                  = "InstanceMessageOutput"
  instance_message_output_alarm_rule_statistics         = var.instance_message_output_alarm_rule_statistics
  instance_message_output_alarm_rule_operator           = var.instance_message_output_alarm_rule_operator
  instance_message_output_alarm_rule_threshold          = var.instance_message_output_alarm_rule_threshold
  instance_message_output_times                         = var.instance_message_output_times
  instance_message_output_alarm_rule_period             = var.instance_message_output_alarm_rule_period
  instance_message_output_alarm_rule_contact_groups     = data.alicloud_cms_alarm_contact_groups.default.names
  instance_message_output_alarm_rule_silence_time       = var.instance_message_output_alarm_rule_silence_time
  instance_message_output_alarm_rule_effective_interval = var.instance_message_output_alarm_rule_effective_interval

  #QueueMessageAccumulation
  queue_message_accumulation_enable_alarm_rule             = var.queue_message_accumulation_enable_alarm_rule
  queue_message_accumulation_alarm_rule_name               = var.queue_message_accumulation_alarm_rule_name
  queue_message_accumulation_metric                        = "QueueMessageAccumulation"
  queue_message_accumulation_alarm_rule_statistics         = var.queue_message_accumulation_alarm_rule_statistics
  queue_message_accumulation_alarm_rule_operator           = var.queue_message_accumulation_alarm_rule_operator
  queue_message_accumulation_alarm_rule_threshold          = var.queue_message_accumulation_alarm_rule_threshold
  queue_message_accumulation_times                         = var.queue_message_accumulation_times
  queue_message_accumulation_alarm_rule_period             = var.queue_message_accumulation_alarm_rule_period
  queue_message_accumulation_alarm_rule_contact_groups     = data.alicloud_cms_alarm_contact_groups.default.names
  queue_message_accumulation_alarm_rule_silence_time       = var.queue_message_accumulation_alarm_rule_silence_time
  queue_message_accumulation_alarm_rule_effective_interval = var.queue_message_accumulation_alarm_rule_effective_interval

}