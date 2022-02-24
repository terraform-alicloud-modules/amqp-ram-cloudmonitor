locals {
  project = "acs_amqp"
}

#amqp instance
resource "alicloud_amqp_instance" "default" {
  instance_name  = var.amqp_instance_name
  instance_type  = var.amqp_instance_type
  max_tps        = var.amqp_max_tps
  queue_capacity = var.amqp_queue_capacity
  support_eip    = var.amqp_support_eip
  max_eip_tps    = var.amqp_max_eip_tps
  payment_type   = var.amqp_payment_type
  modify_type    = var.amqp_modify_type
  period         = var.amqp_period
}

resource "alicloud_amqp_virtual_host" "default" {
  instance_id       = alicloud_amqp_instance.default.id
  virtual_host_name = var.amqp_virtual_host_name
}

resource "alicloud_amqp_exchange" "default" {
  auto_delete_state = var.amqp_exchange_auto_delete_state
  exchange_name     = var.amqp_exchange_name
  exchange_type     = var.amqp_exchange_type
  instance_id       = alicloud_amqp_virtual_host.default.instance_id
  internal          = var.amqp_exchang_internal
  virtual_host_name = alicloud_amqp_virtual_host.default.virtual_host_name
}

resource "alicloud_amqp_queue" "default" {
  instance_id       = alicloud_amqp_virtual_host.default.instance_id
  queue_name        = var.amqp_queue_name
  virtual_host_name = alicloud_amqp_virtual_host.default.virtual_host_name
}

module "ram_user" {
  // 引用module源地址
  source                        = "terraform-alicloud-modules/ram/alicloud"
  name                          = var.ram_user_name
  create_ram_user_login_profile = var.create_ram_user_login_profile
  password                      = var.ram_user_password
  create_ram_access_key         = var.create_ram_access_key
  is_admin                      = var.is_admin
}

#ExchangeTPSIn
resource "alicloud_cms_alarm" "exchange_tps_in" {
  enabled = var.exchange_tps_in_enable_alarm_rule
  name    = var.exchange_tps_in_alarm_rule_name
  project = local.project
  metric  = var.alarm_exchange_tps_in_metric
  dimensions = {
    instanceId   = alicloud_amqp_exchange.default.id
    userId       = var.alarm_user_id
    vhostName    = alicloud_amqp_virtual_host.default.virtual_host_name
    exchangeName = alicloud_amqp_exchange.default.exchange_name
    regionId     = var.region_id
  }
  escalations_critical {
    statistics          = var.exchange_tps_in_alarm_rule_statistics
    comparison_operator = var.exchange_tps_in_alarm_rule_operator
    threshold           = var.exchange_tps_in_alarm_rule_threshold
    times               = var.exchange_tps_in_times
  }
  period             = var.exchange_tps_in_alarm_rule_period
  contact_groups     = var.exchange_tps_in_alarm_rule_contact_groups
  silence_time       = var.exchange_tps_in_alarm_rule_silence_time
  effective_interval = var.exchange_tps_in_alarm_rule_effective_interval
}

#ExchangeTPSOut
resource "alicloud_cms_alarm" "exchange_tps_out" {
  enabled = var.exchange_tps_out_enable_alarm_rule
  name    = var.exchange_tps_out_alarm_rule_name
  project = local.project
  metric  = var.alarm_exchange_tps_out_metric
  dimensions = {
    instanceId   = alicloud_amqp_exchange.default.id
    userId       = var.alarm_user_id
    vhostName    = alicloud_amqp_virtual_host.default.virtual_host_name
    exchangeName = alicloud_amqp_exchange.default.exchange_name
    regionId     = var.region_id
  }
  escalations_critical {
    statistics          = var.exchange_tps_out_alarm_rule_statistics
    comparison_operator = var.exchange_tps_out_alarm_rule_operator
    threshold           = var.exchange_tps_out_alarm_rule_threshold
    times               = var.exchange_tps_out_times
  }
  period             = var.exchange_tps_out_alarm_rule_period
  contact_groups     = var.exchange_tps_out_alarm_rule_contact_groups
  silence_time       = var.exchange_tps_out_alarm_rule_silence_time
  effective_interval = var.exchange_tps_out_alarm_rule_effective_interval
}

#InstanceMessageInput
resource "alicloud_cms_alarm" "instance_message_input" {
  enabled = var.instance_message_input_enable_alarm_rule
  name    = var.instance_message_input_alarm_rule_name
  project = local.project
  metric  = var.alarm_instance_message_input_metric
  dimensions = {
    instanceId = alicloud_amqp_instance.default.id
    userId     = var.alarm_user_id
    regionId   = var.region_id
  }
  escalations_critical {
    statistics          = var.instance_message_input_alarm_rule_statistics
    comparison_operator = var.instance_message_input_alarm_rule_operator
    threshold           = var.instance_message_input_alarm_rule_threshold
    times               = var.instance_message_input_times
  }
  period             = var.instance_message_input_alarm_rule_period
  contact_groups     = var.instance_message_input_alarm_rule_contact_groups
  silence_time       = var.instance_message_input_alarm_rule_silence_time
  effective_interval = var.instance_message_input_alarm_rule_effective_interval
}

#InstanceMessageOutput
resource "alicloud_cms_alarm" "instance_message_output" {
  enabled = var.instance_message_output_enable_alarm_rule
  name    = var.instance_message_output_alarm_rule_name
  project = local.project
  metric  = var.alarm_instance_message_output_metric
  dimensions = {
    instanceId = alicloud_amqp_instance.default.id
    userId     = var.alarm_user_id
    regionId   = var.region_id
  }
  escalations_critical {
    statistics          = var.instance_message_output_alarm_rule_statistics
    comparison_operator = var.instance_message_output_alarm_rule_operator
    threshold           = var.instance_message_output_alarm_rule_threshold
    times               = var.instance_message_output_times
  }
  period             = var.instance_message_output_alarm_rule_period
  contact_groups     = var.instance_message_output_alarm_rule_contact_groups
  silence_time       = var.instance_message_output_alarm_rule_silence_time
  effective_interval = var.instance_message_output_alarm_rule_effective_interval
}

#QueueMessageAccumulation
resource "alicloud_cms_alarm" "queue_message_accumulation" {
  enabled = var.queue_message_accumulation_enable_alarm_rule
  name    = var.queue_message_accumulation_alarm_rule_name
  project = local.project
  metric  = var.queue_message_accumulation_metric
  dimensions = {
    instanceId = alicloud_amqp_instance.default.id
    userId     = var.alarm_user_id
    regionId   = var.region_id
    queueName  = alicloud_amqp_queue.default.queue_name
  }
  escalations_critical {
    statistics          = var.queue_message_accumulation_alarm_rule_statistics
    comparison_operator = var.queue_message_accumulation_alarm_rule_operator
    threshold           = var.queue_message_accumulation_alarm_rule_threshold
    times               = var.queue_message_accumulation_times
  }
  period             = var.queue_message_accumulation_alarm_rule_period
  contact_groups     = var.queue_message_accumulation_alarm_rule_contact_groups
  silence_time       = var.queue_message_accumulation_alarm_rule_silence_time
  effective_interval = var.queue_message_accumulation_alarm_rule_effective_interval
}