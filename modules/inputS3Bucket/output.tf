output "input_bucket_arn" {
  description = "ARN of the input S3 bucket"
  value       = aws_s3_bucket.input_bucket.arn
}

output "input_bucket_id" {
  description = "ID of the input S3 bucket"
  value       = aws_s3_bucket.input_bucket.id
}

output "input_bucket_name" {
  value = aws_s3_bucket.input_bucket.bucket
}