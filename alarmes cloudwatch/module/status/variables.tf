variable "instance_id" {
  description = "The ID of the EC2 instance to monitor"
  type        = string
}

variable "sns_topic_arn" {
  description = "The ARN of the existing SNS topic"
  type        = string
}

##################################################
#                   status_check_ failed                #
##################################################
variable "status_check_alarm_name" {
  description = "The name of the CloudWatch alarm for status_check_ check failures"
  type        = string
}

variable "status_check_threshold" {
  description = "The threshold for the status_check_ check alarm"
  type        = number
  default     = 1
}

variable "status_check_evaluation_periods" {
  description = "The number of periods over which data is evaluated for the status_check_ check alarm"
  type        = number
}

variable "status_check_period" {
  description = "The period in seconds over which the specified statistic is applied for the status_check_ check alarm"
  type        = number
  default     = 60
}

variable "status_check_statistic" {
  description = "The statistic to apply to the alarm's associated metric"
  type        = string
  default     = null
}

variable "status_check_comparison_operator" {
  description = "The arithmetic operation to use when comparing the specified statistic and threshold for the status_check_ check alarm"
  type        = string
}

variable "status_check_alarm_description" {
  description = "The description of the status_check_ check alarm"
  type        = string
}

variable "status_check_datapoints_to_alarm" {
  description = "The number of datapoints that must be breaching to trigger the status_check_ check alarm"
  type        = number
  default     = 1
}
