
#Criação de alarmes para o cloudwatch

module "cloudwatch_alarms" {
  source        = "./module/alarms"
  instance_id   = "i-05e3dca3853891b95"
  sns_topic_arn = "arn:aws:sns:us-east-1:122753118347:teste"

##################################################
#                     cpu                        #
##################################################
  cpu_alarm_name          = "CLOUDDOG_EC2_thor-openvpn-labs_CPU"
  cpu_threshold           = 80
  cpu_evaluation_periods  = 1
  cpu_period              = 60
  cpu_statistic           = "Maximum"
  cpu_comparison_operator = "GreaterThanThreshold"
  cpu_alarm_description   = "This metric monitors CPU usage"
  cpu_datapoints_to_alarm = 1

##################################################
#                   memory                       #
##################################################
  memory_alarm_name          = "CLOUDDOG_EC2_thor-openvpn-labs_MEMORY"
  memory_threshold           = 80
  memory_evaluation_periods  = 1
  memory_period              = 60
  memory_statistic           = "Maximum"
  memory_comparison_operator = "GreaterThanThreshold"
  memory_alarm_description   = "This metric monitors memory usage"
  memory_datapoints_to_alarm = 1

##################################################
#                  disk usage                    #
##################################################
  disk_alarm_name          = "CLOUDDOG_EC2_thor-openvpn-labs_DISK_LOW"
  disk_threshold           = 80
  disk_evaluation_periods  = 1
  disk_period              = 60
  disk_statistic           = "Maximum"
  disk_comparison_operator = "GreaterThanThreshold"
  disk_alarm_description   = "This metric monitors disk usage"
  disk_datapoints_to_alarm = 1

##################################################
#                   status_check_ failed                #
##################################################
  status_check_alarm_name          = "CLOUDDOG_EC2_thor-openvpn-labs_STATUSFAILED"
  status_check_threshold           = 80
  status_check_evaluation_periods  = 1
  status_check_period              = 60
  status_check_statistic           = "Maximum"
  status_check_comparison_operator = "GreaterThanThreshold"
  status_check_alarm_description   = "This metric monitors status_check_ check failures"
  status_check_datapoints_to_alarm = 1
}

