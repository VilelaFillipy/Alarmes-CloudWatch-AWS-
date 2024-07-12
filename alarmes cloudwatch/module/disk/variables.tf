
variable "instance_id" {
  description = "The ID of the EC2 instance to monitor"
  type        = string
}

variable "sns_topic_arn" {
  description = "The ARN of the existing SNS topic"
  type        = string
}

##################################################
#                  disk usage                    #
##################################################
variable "disk_alarm_name" {
  description = "The name of the CloudWatch alarm for disk usage"
  type        = string
}

variable "disk_threshold" {
  description = "The threshold for the disk usage alarm"
  type        = number
}

variable "disk_evaluation_periods" {
  description = "The number of periods over which data is evaluated for the disk usage alarm"
  type        = number
}

variable "disk_period" {
  description = "The period in seconds over which the specified statistic is applied for the disk usage alarm"
  type        = number
  default     = 60
}

variable "disk_statistic" {
  description = "The statistic to apply to the alarm's associated metric"
  type        = string
  default     = null
}

variable "disk_comparison_operator" {
  description = "The arithmetic operation to use when comparing the specified statistic and threshold for the disk usage alarm"
  type        = string
}

variable "disk_alarm_description" {
  description = "The description of the disk usage alarm"
  type        = string
}

variable "disk_datapoints_to_alarm" {
  description = "The number of datapoints that must be breaching to trigger the disk usage alarm"
  type        = number
  default     = 1
}