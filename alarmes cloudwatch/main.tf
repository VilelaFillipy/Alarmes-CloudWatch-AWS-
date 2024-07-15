
#Criação de alarmes para o cloudwatch

##################################################
#                     cpu                        #
##################################################
module "cloudwatch_alarms_CPU" {
  source        = "./module/cpu"
  instance_id   = "${var.instance-id}"
  sns_topic_arn = "${var.sns-topic}"

  cpu_alarm_name          = "${var.cliente}_EC2_${var.recurso}_CPU"
  cpu_threshold           = "${var.threshold}"
  cpu_evaluation_periods  = "${var.evaluation_periods}"
  cpu_period              = "${var.period}"
  cpu_statistic           = "Maximum"
  cpu_comparison_operator = "GreaterThanThreshold"
  cpu_alarm_description   = "This metric monitors CPU usage"
  cpu_datapoints_to_alarm = "${var.datapoints_to_alarm}"
}

##################################################
#                   memory                       #
##################################################
module "cloudwatch_alarms_memory" {
  source        = "./module/memory"
  instance_id   = "${var.instance-id}"
  sns_topic_arn = "${var.sns-topic}"


  memory_alarm_name          = "${var.cliente}_EC2_${var.recurso}_MEMORY"
  memory_threshold           = "${var.threshold}"
  memory_evaluation_periods  = "${var.evaluation_periods}"
  memory_period              = "${var.period}"
  memory_statistic           = "Maximum"
  memory_comparison_operator = "GreaterThanThreshold"
  memory_alarm_description   = "This metric monitors CPU usage"
  memory_datapoints_to_alarm = "${var.datapoints_to_alarm}"
}

##################################################
#               status_check_ failed             #
##################################################
module "cloudwatch_alarms_status_check_failed" {
  source = "./module/status"
  instance_id   = "${var.instance-id}"
  sns_topic_arn = "${var.sns-topic}"

  status_check_alarm_name          = "${var.cliente}_EC2_${var.recurso}_STATUSFAILED"
  status_check_threshold           = "${var.threshold}"
  status_check_evaluation_periods  = "${var.evaluation_periods}"
  status_check_period              = "${var.period}"
  status_check_statistic           = "Maximum"
  status_check_comparison_operator = "GreaterThanThreshold"
  status_check_alarm_description   = "This metric monitors CPU usage"
  status_check_datapoints_to_alarm = "${var.datapoints_to_alarm}"
}

##################################################
#                  disk usage                    #
##################################################
module "cloudwatch_alarms_disk" {
  source        = "./module/disk"
  instance_id   = "${var.instance-id}"
  sns_topic_arn = "${var.sns-topic}"

  disk_alarm_name          = "${var.cliente}_EC2_${var.recurso}_DISK_LOW"
  disk_threshold           = "${var.threshold}"
  disk_evaluation_periods  = "${var.evaluation_periods}"
  disk_period              = "${var.period}"
  disk_statistic           = "Maximum"
  disk_comparison_operator = "GreaterThanThreshold"
  disk_alarm_description   = "This metric monitors CPU usage"
  disk_datapoints_to_alarm = "${var.datapoints_to_alarm}"
}
