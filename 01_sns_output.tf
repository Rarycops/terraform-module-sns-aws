output "sns_topic_arn" {
  description = "The ARN of the SNS topic"
  value       = aws_sns_topic.sns_topic.arn
}

output "sns_topic_beginning_archive_time" {
  description = "The oldest timestamp at which a FIFO topic subscriber can start a replay."
  value       = aws_sns_topic.sns_topic.beginning_archive_time
}

output "sns_topic_owner" {
  description = "The AWS Account ID of the SNS topic owner"
  value       = aws_sns_topic.sns_topic.owner
}

output "sns_topic_subscription_arn" {
  description = "ARN of the subscription."
  value       = aws_sns_topic_subscription.sns_topic_subscription.arn
}

output "sns_topic_subscription_owner_id" {
  description = "AWS account ID of the subscription's owner."
  value       = aws_sns_topic_subscription.sns_topic_subscription.owner_id
}
