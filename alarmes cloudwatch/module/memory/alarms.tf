
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
    InstanceId = "i-082d3b22791b3452e"
    ImageId = "ami-04a81a99f5ec58529"
    InstanceType =  "t2.micro"
  }
  alarm_actions = [var.sns_topic_arn]
  insufficient_data_actions = []
  ok_actions                = []
  datapoints_to_alarm = var.memory_datapoints_to_alarm
  treat_missing_data  = "missing"
}