data "aws_iam_policy_document" "sns_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }

    actions   = ["SNS:Publish"]
    resources = [aws_sns_topic.classification_sns.arn]

    condition {
      test     = "ArnLike"
      variable = "aws:SourceArn"
      values   = [var.output_bucket_arn]
    }
  }
}

resource "aws_sns_topic" "classification_sns" {
  name = var.sns_topic_name
}

resource "aws_sns_topic_policy" "sns_policy" {
  arn = aws_sns_topic.classification_sns.arn

  policy = data.aws_iam_policy_document.sns_policy.json
}


# Note: Application Platform endpoint is needed here!

# resource "aws_sns_topic_subscription" "sns_subscription" {
#   topic_arn = aws_sns_topic.classification_sns.arn
#   protocol  = "application"  # Or other endpoint
#   endpoint  = var.sns_endpoint_arn
# }
