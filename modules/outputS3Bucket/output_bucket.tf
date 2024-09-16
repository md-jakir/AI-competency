resource "aws_s3_bucket" "output_bucket" {
  bucket = var.output_bucket_name

  tags = {
    name = "output bucket"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = aws_s3_bucket.output_bucket.id

  topic {
    topic_arn     = var.topic_sns_arn
    events        = ["s3:ObjectCreated:*"]
    filter_suffix = ".pdf"
  }
  depends_on = [ var.topic_sns_id ]
}