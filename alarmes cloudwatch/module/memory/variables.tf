
variable "instance_id" {
  description = "The ID of the EC2 instance to monitor"
  type        = string
}

variable "sns_topic_arn" {
  description = "The ARN of the existing SNS topic"
  type        = string
}
##################################################
#                   memory                       #
##################################################
variable "memory_alarm_name" {
  description = "The name of the CloudWatch alarm for memory usage"
  type        = string
}

variable "memory_threshold" {
  description = "The threshold for the memory usage alarm"
  type        = number
}

variable "memory_evaluation_periods" {
  description = "The number of periods over which data is evaluated for the memory usage alarm"
  type        = number
}

variable "memory_period" {
  description = "The period in seconds over which the specified statistic is applied for the memory usage alarm"
  type        = number
  default     = 60
}

variable "memory_statistic" {
  description = "The statistic to apply to the alarm's associated metric"
  type        = string
  default     = null
}

variable "memory_comparison_operator" {
  description = "The arithmetic operation to use when comparing the specified statistic and threshold for the memory usage alarm"
  type        = string
}

variable "memory_alarm_description" {
  description = "The description of the memory usage alarm"
  type        = string
}

variable "memory_datapoints_to_alarm" {
  description = "The number of datapoints that must be breaching to trigger the memory usage alarm"
  type        = number
  default     = 1
}