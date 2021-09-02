variable "amqp_instance_name" {
  description = "The specification of amqp instance name."
  type        = string
  default     = "test_amqp_instance"
}
variable "amqp_instance_type" {
  description = "The specification of amqp instance type."
  type        = string
  default     = "professional"
}
variable "amqp_max_tps" {
  description = "The specification of amqp max tps."
  type        = number
  default     = 1000
}
variable "amqp_queue_capacity" {
  description = "The specification of amqp queue capacity."
  type        = number
  default     = 50
}
variable "amqp_max_eip_tps" {
  description = "The specification of amqp max eip tps."
  type        = number
  default     = 128
}

variable "amqp_payment_type" {
  description = "The specification of amqp payment type."
  type        = string
  default     = "Subscription"
}

variable "amqp_period" {
  description = "The specification of amqp period."
  type        = number
  default     = 1
}

variable "amqp_support_eip" {
  description = "The specification of amqp is  support eip."
  type        = bool
  default     = true
}

variable "amqp_virtual_host_name" {
  description = "The specification of amqp virtual host name."
  type        = string
  default     = "my-VirtualHost"
}

variable "amqp_exchange_name" {
  description = "The specification of amqp exchange name."
  type        = string
  default     = "my-Exchange"
}

variable "amqp_exchange_type" {
  description = "The specification of amqp exchange type."
  type        = string
  default     = "DIRECT"
}

variable "amqp_exchange_auto_delete_state" {
  description = "The specification of amqp exchange is auto delete state."
  type        = bool
  default     = false
}

variable "amqp_exchang_internal" {
  description = "The specification of amqp exchange internal."
  type        = bool
  default     = false
}

variable "amqp_queue_name" {
  description = "The specification of amqp queue name."
  type        = string
  default     = "my-Queue"
}

#about ram variable
variable "ram_user_name" {
  description = "The ram user of name."
  type        = string
  default     = "terraform_test1"
}
variable "ram_user_password" {
  description = "The ram user of password."
  type        = string
  default     = "password123!Ab"
}

variable "create_ram_user_login_profile" {
  description = "The specification of the ram user login profile."
  type        = bool
  default     = true
}
variable "create_ram_access_key" {
  description = "The specification of the create ram access key."
  type        = bool
  default     = true
}
variable "is_admin" {
  description = "The specification of the ram user is admin."
  type        = bool
  default     = true
}

variable "region_id" {
  description = "The specification of regionId."
  type        = string
  default     = "cn-hangzhou"
}


#############
# exchange_tps_in alarm
#############
variable "exchange_tps_in_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "exchange_tps_in_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "exchange_tps_in_test_rule_name"
}

variable "alarm_exchange_tps_in_metric" {
  description = "Name of the monitoring metrics corresponding to a project, such as 'CPUUtilization' and so on. "
  type        = string
  default     = "ExchangeTPSIn"
}

variable "exchange_tps_in_alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
}

variable "exchange_tps_in_alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics. Valid values: ['Average', 'Minimum', 'Maximum']. Default to 'Average'. "
  type        = string
  default     = "Value"
}

variable "exchange_tps_in_alarm_rule_operator" {
  description = "Alarm comparison operator. Valid values: ['<=', '<', '>', '>=', '==', '!=']. Default to '=='. "
  type        = string
  default     = ">="
}

variable "exchange_tps_in_alarm_rule_threshold" {
  description = "Alarm threshold value, which must be a numeric value currently. "
  type        = string
  default     = "90"
}

variable "exchange_tps_in_times" {
  description = "Alarm times value, which must be a numeric value currently. "
  type        = string
  default     = "3"
}

variable "exchange_tps_in_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule, which must have been created on the console. "
  type        = list(string)
  default     = ["test-web-server"]
}

variable "exchange_tps_in_alarm_rule_silence_time" {
  description = "Notification silence period in the alarm state, in seconds. Valid value range: [300, 86400]. Default to 86400. "
  type        = number
  default     = 86400
}

variable "exchange_tps_in_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. It foramt as 'hh:mm-hh:mm', like '0:00-4:00'."
  type        = string
  default     = "0:00-2:00"
}
variable "alarm_user_id" {
  description = "The alarm of userId."
  type        = string
  default     = "test"
}

#############
# exchange_tps_out alarm
#############
variable "exchange_tps_out_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "exchange_tps_out_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "exchange_tps_out_test_rule_name"
}

variable "alarm_exchange_tps_out_metric" {
  description = "Name of the monitoring metrics corresponding to a project, such as 'CPUUtilization' and so on. "
  type        = string
  default     = "instance_disk_capacity"
}

variable "exchange_tps_out_alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
}

variable "exchange_tps_out_alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics. Valid values: ['Average', 'Minimum', 'Maximum']. Default to 'Average'. "
  type        = string
  default     = "Maximum"
}

variable "exchange_tps_out_alarm_rule_operator" {
  description = "Alarm comparison operator. Valid values: ['<=', '<', '>', '>=', '==', '!=']. Default to '=='. "
  type        = string
  default     = ">="
}

variable "exchange_tps_out_alarm_rule_threshold" {
  description = "Alarm threshold value, which must be a numeric value currently. "
  type        = string
  default     = "90"
}

variable "exchange_tps_out_times" {
  description = "Alarm times value, which must be a numeric value currently. "
  type        = string
  default     = "3"
}

variable "exchange_tps_out_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule, which must have been created on the console. "
  type        = list(string)
  default     = ["test-web-server"]
}

variable "exchange_tps_out_alarm_rule_silence_time" {
  description = "Notification silence period in the alarm state, in seconds. Valid value range: [300, 86400]. Default to 86400. "
  type        = number
  default     = 86400
}

variable "exchange_tps_out_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. It foramt as 'hh:mm-hh:mm', like '0:00-4:00'."
  type        = string
  default     = "0:00-2:00"
}

#############
# cms instance_message_input alarm
#############
variable "instance_message_input_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "instance_message_input_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "instance_message_input_test_rule_name"
}

variable "alarm_instance_message_input_metric" {
  description = "Name of the monitoring metrics corresponding to a project, such as 'CPUUtilization' and so on. "
  type        = string
  default     = "InstanceMessageInput"
}

variable "instance_message_input_alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
}

variable "instance_message_input_alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics. Valid values: ['Average', 'Minimum', 'Maximum']. Default to 'Average'. "
  type        = string
  default     = "Sum"
}

variable "instance_message_input_alarm_rule_operator" {
  description = "Alarm comparison operator. Valid values: ['<=', '<', '>', '>=', '==', '!=']. Default to '=='. "
  type        = string
  default     = ">="
}

variable "instance_message_input_alarm_rule_threshold" {
  description = "Alarm threshold value, which must be a numeric value currently. "
  type        = string
  default     = "90"
}

variable "instance_message_input_times" {
  description = "Alarm times value, which must be a numeric value currently. "
  type        = string
  default     = "3"
}


variable "instance_message_input_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule, which must have been created on the console. "
  type        = list(string)
  default     = ["test-web-server"]
}

variable "instance_message_input_alarm_rule_silence_time" {
  description = "Notification silence period in the alarm state, in seconds. Valid value range: [300, 86400]. Default to 86400. "
  type        = number
  default     = 86400
}

variable "instance_message_input_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. It foramt as 'hh:mm-hh:mm', like '0:00-4:00'."
  type        = string
  default     = "0:00-2:00"
}


#############
# cms instance_message_output alarm
#############
variable "instance_message_output_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "instance_message_output_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "disk_capacity_test_rule_name"
}

variable "alarm_instance_message_output_metric" {
  description = "Name of the monitoring metrics corresponding to a project, such as 'CPUUtilization' and so on. "
  type        = string
  default     = "InstanceMessageOutput"
}

variable "instance_message_output_alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
}

variable "instance_message_output_alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics. Valid values: ['Average', 'Minimum', 'Maximum']. Default to 'Average'. "
  type        = string
  default     = "Sum"
}

variable "instance_message_output_alarm_rule_operator" {
  description = "Alarm comparison operator. Valid values: ['<=', '<', '>', '>=', '==', '!=']. Default to '=='. "
  type        = string
  default     = ">="
}

variable "instance_message_output_alarm_rule_threshold" {
  description = "Alarm threshold value, which must be a numeric value currently. "
  type        = string
  default     = "90"
}

variable "instance_message_output_times" {
  description = "Alarm times value, which must be a numeric value currently. "
  type        = string
  default     = "3"
}


variable "instance_message_output_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule, which must have been created on the console. "
  type        = list(string)
  default     = ["test-web-server"]
}

variable "instance_message_output_alarm_rule_silence_time" {
  description = "Notification silence period in the alarm state, in seconds. Valid value range: [300, 86400]. Default to 86400. "
  type        = number
  default     = 86400
}

variable "instance_message_output_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. It foramt as 'hh:mm-hh:mm', like '0:00-4:00'."
  type        = string
  default     = "0:00-2:00"
}




#############
# cms queue_message_accumulation alarm
#############
variable "queue_message_accumulation_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "queue_message_accumulation_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "queue_message_accumulation_test_rule_name"
}

variable "queue_message_accumulation_metric" {
  description = "Name of the monitoring metrics corresponding to a project, such as 'CPUUtilization' and so on. "
  type        = string
  default     = "QueueMessageAccumulation"
}

variable "queue_message_accumulation_alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
}

variable "queue_message_accumulation_alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics. Valid values: ['Average', 'Minimum', 'Maximum']. Default to 'Average'. "
  type        = string
  default     = "Maximum"
}

variable "queue_message_accumulation_alarm_rule_operator" {
  description = "Alarm comparison operator. Valid values: ['<=', '<', '>', '>=', '==', '!=']. Default to '=='. "
  type        = string
  default     = ">="
}

variable "queue_message_accumulation_alarm_rule_threshold" {
  description = "Alarm threshold value, which must be a numeric value currently. "
  type        = string
  default     = "90"
}

variable "queue_message_accumulation_times" {
  description = "Alarm times value, which must be a numeric value currently. "
  type        = string
  default     = "3"
}


variable "queue_message_accumulation_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule, which must have been created on the console. "
  type        = list(string)
  default     = ["test-web-server"]
}

variable "queue_message_accumulation_alarm_rule_silence_time" {
  description = "Notification silence period in the alarm state, in seconds. Valid value range: [300, 86400]. Default to 86400. "
  type        = number
  default     = 86400
}

variable "queue_message_accumulation_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. It foramt as 'hh:mm-hh:mm', like '0:00-4:00'."
  type        = string
  default     = "0:00-2:00"
}