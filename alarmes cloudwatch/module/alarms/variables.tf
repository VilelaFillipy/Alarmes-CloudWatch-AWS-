
variable "instance_id" {
  description = "The ID of the EC2 instance to monitor"
  type        = string
}

variable "sns_topic_arn" {
  description = "The ARN of the existing SNS topic"
  type        = string
}

##################################################
#                     cpu                        #
##################################################
variable "cpu_alarm_name" {
  description = "The name of the CloudWatch alarm for CPU usage"
  type        = string
}

variable "cpu_threshold" {
  description = "The threshold for the CPU usage alarm"
  type        = number
}

variable "cpu_evaluation_periods" {
  description = "The number of periods over which data is evaluated for the CPU usage alarm"
  type        = number
}

variable "cpu_period" {
  description = "The period in seconds over which the specified statistic is applied for the CPU usage alarm"
  type        = number
  default     = 60
}

variable "cpu_statistic" {
  description = "The statistic to apply to the alarm's associated metric"
  type        = string
  default     = null
}

variable "cpu_comparison_operator" {
  description = "The arithmetic operation to use when comparing the specified statistic and threshold for the CPU usage alarm"
  type        = string
}

variable "cpu_alarm_description" {
  description = "The description of the CPU usage alarm"
  type        = string
}

variable "cpu_datapoints_to_alarm" {
  description = "The number of datapoints that must be breaching to trigger the CPU usage alarm"
  type        = number
  default     = 1
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
