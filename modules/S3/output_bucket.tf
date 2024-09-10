# resource "aws_s3_bucket" "output_bucket" {
#   bucket = var.output_bucket_name

#   notification {
#     topic {
#       topic_arn = var.sns_topic_arn
#       events    = ["s3:ObjectCreated:*"]
#       filter_suffix = ".pdf"
#     }
#   }
# }
