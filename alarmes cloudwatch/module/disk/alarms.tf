
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
    InstanceId = "i-082d3b22791b3452e"
    ImageId = "ami-04a81a99f5ec58529"
    InstanceType =  "t2.micro"
    path = "/"
    device = "xvda1"
    fstype = "ext4"
  }
  alarm_actions = [var.sns_topic_arn] # Trigger when going ABOVE the threshold
  insufficient_data_actions = [] 
  ok_actions                = [] # You might want actions when back BELOW the threshold
  datapoints_to_alarm = var.disk_datapoints_to_alarm
  treat_missing_data  = "missing"
}