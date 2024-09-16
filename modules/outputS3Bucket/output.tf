output "output_bucket_arn" {
  description = "ARN of the output S3 bucket"
  value       = aws_s3_bucket.output_bucket.arn
}

output "output_bucket_id" {
  description = "ID of the output S3 bucket"
  value       = aws_s3_bucket.output_bucket.id
}

output "output_bucket_name" {
  description = "The name of the output S3 bucket"
  value       = aws_s3_bucket.output_bucket.bucket
}