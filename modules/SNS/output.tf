output "sns_topic_arn" {
  description = "The ARN of the SNS topic"
  value       = aws_sns_topic.classification_sns.arn
}

# output "sns_endpoint_arn" {
#   description = "The ARN of the SNS endpoint"
#   value       = aws_sns_topic_subscription.sns_subscription.arn
# }

output "sns_topic_id" {
  description = "The ARN of the SNS topic"
  value       = aws_sns_topic.classification_sns.id
}
