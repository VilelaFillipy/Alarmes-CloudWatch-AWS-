##################################################
#                   status_check_ failed                #
##################################################
resource "aws_cloudwatch_metric_alarm" "status_check_failed_alarm" {
  alarm_name          = var.status_check_alarm_name
  comparison_operator = var.status_check_comparison_operator
  evaluation_periods  = var.status_check_evaluation_periods
  metric_name         = "StatusCheckFailed"
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