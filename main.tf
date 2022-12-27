resource "aws_sns_topic" "notification_topic" {
  name = "notification-topic"
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = aws_sns_topic.notification_topic.arn
  protocol  = "email"
  endpoint  = var.email_address
}

resource "aws_cloudwatch_metric_alarm" "cpu_utilization_metric_alarm" {
  alarm_name                = var.alarm_name
  comparison_operator       = var.alarm_comparison_operator
  evaluation_periods        = var.alarm_evaluation_periods
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = var.alarm_period
  statistic                 = var.alarm_statistic
  threshold                 = var.alarm_threshold
  alarm_description         = var.alarm_description
  alarm_actions     = [aws_sns_topic.notification_topic.arn]
  ok_actions          = [aws_sns_topic.notification_topic.arn]
  insufficient_data_actions = []
  actions_enabled     = "true" # Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to true
  treat_missing_data = missing # Sets how this alarm handle missing data points. The following values are supported: missing, ignore, breaching and notBreaching. Defaults to missing
  tags = var.cludwatch_alarm_tags
}
