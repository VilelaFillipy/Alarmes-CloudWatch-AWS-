
##################################################
#                     cpu                        #
##################################################
resource "aws_cloudwatch_metric_alarm" "cpu_usage_alarm" {
  alarm_name          = var.cpu_alarm_name
  comparison_operator = var.cpu_comparison_operator
  evaluation_periods  = var.cpu_evaluation_periods
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = var.cpu_period
  statistic           = var.cpu_statistic
  threshold           = var.cpu_threshold
  alarm_description   = var.cpu_alarm_description
  dimensions = {
    InstanceId = var.instance_id
  }

  alarm_actions = [var.sns_topic_arn]
  insufficient_data_actions = []
  ok_actions                = []

  datapoints_to_alarm = var.cpu_datapoints_to_alarm
  treat_missing_data  = "missing"
}

##################################################
#                   memory                       #
##################################################
resource "aws_cloudwatch_metric_alarm" "memory_usage_alarm" {
  alarm_name          = var.memory_alarm_name
  comparison_operator = var.memory_comparison_operator
  evaluation_periods  = var.memory_evaluation_periods
  metric_name         = "mem_used_percent"
  namespace           = "CWAgent"
  period              = var.memory_period
  statistic           = var.memory_statistic
  threshold           = var.memory_threshold
  alarm_description   = var.memory_alarm_description
  dimensions = {
    InstanceId = var.instance_id
  }

  alarm_actions = [var.sns_topic_arn]
  insufficient_data_actions = []
  ok_actions                = []

  datapoints_to_alarm = var.memory_datapoints_to_alarm
  treat_missing_data  = "missing"
}

##################################################
#                  disk usage                    #
##################################################
resource "aws_cloudwatch_metric_alarm" "disk_usage_alarm" {
  alarm_name          = var.disk_alarm_name
  comparison_operator = var.disk_comparison_operator
  evaluation_periods  = var.disk_evaluation_periods
  metric_name         = "disk_used_percent"
  namespace           = "CWAgent"
  period              = var.disk_period
  statistic           = var.disk_statistic
  threshold           = var.disk_threshold
  alarm_description   = var.disk_alarm_description
  dimensions = {
    InstanceId = var.instance_id
  }

  alarm_actions = [var.sns_topic_arn]
  insufficient_data_actions = []
  ok_actions                = []

  datapoints_to_alarm = var.disk_datapoints_to_alarm
  treat_missing_data  = "missing"
}

##################################################
#                   status_check_ failed                #
##################################################
resource "aws_cloudwatch_metric_alarm" "status_check_failed_alarm" {
  alarm_name          = var.status_check_alarm_name
  comparison_operator = var.status_check_comparison_operator
  evaluation_periods  = var.status_check_evaluation_periods
  metric_name         = "status_check_CheckFailed"
  namespace           = "AWS/EC2"
  period              = var.status_check_period
  statistic           = var.status_check_statistic
  threshold           = var.status_check_threshold
  alarm_description   = var.status_check_alarm_description
  dimensions = {
    InstanceId = var.instance_id
  }

  alarm_actions = [var.sns_topic_arn]
  insufficient_data_actions = []
  ok_actions                = []

  datapoints_to_alarm = var.status_check_datapoints_to_alarm
  treat_missing_data  = "missing"
}
