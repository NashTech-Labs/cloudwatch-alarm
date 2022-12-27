variable "email_address" {
  type        = string
  description = "variable for email to get alarm notification"
}

variable "alarm_name" {
  type        = string
  description = "variable for alarm name"
  default = "cpu_utilization_alarm"
}

variable "alarm_description" {
  type        = string
  description = "Variable for alarm description"
  default = "Cloudwatch alarm to watch the CPU utilization of an ec2"
}

variable "alarm_comparison_operator" {
  type        = string
  description = "Variable for alarm comparison operator. The arithmetic operation to use when comparing the specified Statistic and Threshold. Supported Values: GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold. Additionally, the values LessThanLowerOrGreaterThanUpperThreshold, LessThanLowerThreshold, and GreaterThanUpperThreshold are used only for alarms based on anomaly detection models."
}

variable "alarm_statistic" {
  type        = string
  description = "Variable for alarm statistic. Supported Values: SampleCount, Average, Sum, Minimum, Maximum"
  default = "Average"
}

variable "alarm_evaluation_periods" {
  type        = string
  description = "Variable for alarm evaluation period. The number of periods over which data is compared to the specified threshold"
  default = "2"
}

variable "alarm_period" {
  type        = string
  description = "variable for alarm period in seconds over which the specified statistic is applied"
  default = "120" # 2 minutes
}

variable "alarm_threshold" {
  type        = string
  description = "Variable for alarm thresholdagainst which the statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models."
  default = "80"
}

variable "cludwatch_alarm_tags" {
  type        = map
  description = "Variable for alarm threshold"
  default = {}
}