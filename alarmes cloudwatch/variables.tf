variable "instance-id" {
  type = string
}

variable "sns-topic" {
  type = string
}

variable "cliente" {
  type = string
}

variable "recurso" {
  type = string
}

variable "threshold" {
  type = number
}

variable "evaluation_periods" {
  type = number
}

variable "period" {
  type = number
}

variable "datapoints_to_alarm" {
  type = number
}