# output "sns_policy_json" {
#   description = "SNS policy JSON output"
#   value       = data.aws_iam_policy_document.topic.json
# }

output "comprehend_role_arn" {
  value = aws_iam_role.comprehend_role.arn
}

output "iam_role_policy_name" {
  value = aws_iam_policy.comprehend_policy.name
}

output "iam_role_name" {
  value = aws_iam_role.comprehend_role.name
}

