#alicloud_amqp_instance
variable "amqp_instance_name" {
  description = "The specification of amqp instance name."
  type        = string
  default     = "tf-testacc-name"
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

variable "amqp_support_eip" {
  description = "The specification of amqp is  support eip."
  type        = bool
  default     = false
}

variable "amqp_max_eip_tps" {
  description = "The specification of amqp max eip tps."
  type        = number
  default     = 128
}

variable "amqp_modify_type" {
  description = "The specification of amqp payment type."
  type        = string
  default     = "Downgrade"
}

variable "amqp_period" {
  description = "The specification of amqp period."
  type        = number
  default     = 1
}

#alicloud_amqp_exchange
variable "amqp_exchang_internal" {
  description = "The specification of amqp exchange internal."
  type        = bool
  default     = true
}

#about ram variable
variable "ram_user_password" {
  description = "The ram user of password."
  type        = string
  default     = "YourPassword123!"
}

variable "is_admin" {
  description = "The specification of the ram user is admin."
  type        = bool
  default     = true
}

# exchange_tps_in alarm
variable "exchange_tps_in_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "exchange_tps_in_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "tf-testacc-rule-name"
}

variable "exchange_tps_in_alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics. "
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

variable "exchange_tps_in_alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
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

# exchange_tps_out alarm
variable "exchange_tps_out_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "exchange_tps_out_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "tf-testacc-rule-name"
}

variable "exchange_tps_out_alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics."
  type        = string
  default     = "Value"
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

variable "exchange_tps_out_alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
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

# cms instance_message_input alarm
variable "instance_message_input_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "instance_message_input_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "tf-testacc-rule-name"
}

variable "instance_message_input_alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics."
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

variable "instance_message_input_alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
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

# cms instance_message_output alarm
variable "instance_message_output_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "instance_message_output_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "tf-testacc-rule-name"
}

variable "instance_message_output_alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics. "
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

variable "instance_message_output_alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
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

# cms queue_message_accumulation alarm
variable "queue_message_accumulation_enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "queue_message_accumulation_alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "tf-testacc-rule-name"
}

variable "queue_message_accumulation_alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics. "
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

variable "queue_message_accumulation_alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
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