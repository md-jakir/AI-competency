variable "sns_topic_name" {
  type = string
}

variable "sns_topic_arn" {
  type = string
}

variable "output_bucket_arn" {
  description = "The ARN of the output S3 bucket"
  type        = string
}
