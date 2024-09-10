# resource "aws_sns_topic" "classification_sns" {
#   name = var.sns_topic_name
# }

# resource "aws_sns_topic_subscription" "sns_subscription" {
#   topic_arn = aws_sns_topic.classification_sns.arn
#   protocol  = "lambda"  # Or other endpoint
#   endpoint  = var.sns_endpoint_arn
# }
