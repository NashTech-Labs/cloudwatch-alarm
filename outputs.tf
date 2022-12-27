output "alarm_name" {
  value = aws_cloudwatch_metric_alarm.cpu_utilization_metric_alarm.name
}

output "alarm_arn" {
  value = aws_cloudwatch_metric_alarm.cpu_utilization_metric_alarm.arn
}

output "sns_topic_arn" {
  value = aws_sns_topic.notification_topic.arn
}