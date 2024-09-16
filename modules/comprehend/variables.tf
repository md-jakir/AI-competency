variable "classifier_name" {
  type = string
}

variable "input_bucket_name" {
  type = string
}

variable "output_bucket_name" {
  type = string
}

variable "data_access_role_arn" {
  description = "IAM role ARN to access the data"
  type        = string
}

variable "iam_role_policy_name" {
  description = "IAM role ARN to access the data"
  type        = string
}

variable "comprehend_iam_role_name" {
  description = "IAM role ARN to access the data"
  type        = string
}
