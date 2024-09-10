resource "aws_s3_bucket" "input_bucket" {
  bucket = var.input_bucket_name

  tags = {
    name = "input bucket"
    Environment = "dev"
  }
}

# resource "aws_s3_bucket_object" "training_data" {
#   bucket = aws_s3_bucket.input_bucket.bucket
#   key    = "training-data.csv"
#   source = "path/to/training-data.csv"
# }
