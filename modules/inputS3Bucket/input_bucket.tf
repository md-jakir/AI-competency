resource "aws_s3_bucket" "input_bucket" {
  bucket = var.input_bucket_name

  tags = {
    name = "input bucket"
    Environment = "dev"
  }
}
