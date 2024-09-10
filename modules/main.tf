provider "aws" {
  region = "var.aws_region"
}

module "input_s3" {
  source            = "./modules/s3"
  input_bucket_name = "cv-input-bucket"
}

# module "output_s3" {
#   source            = "./modules/s3"
#   output_bucket_name = "cv-output-bucket"
#   sns_topic_arn     = module.sns.classification_sns_arn
# }

# module "sns" {
#   source         = "./modules/sns"
#   sns_topic_name = "cv-classification-topic"
#   sns_endpoint_arn = "arn:aws:lambda:your-region:account-id:function:function-name"
# }

# module "comprehend" {
#   source              = "./modules/comprehend"
#   classifier_name     = "cv-classifier"
#   input_bucket_name   = module.input_s3.input_bucket_name
#   output_bucket_name  = module.output_s3.output_bucket_name
# }

# module "iam" {
#   source              = "./modules/iam"
#   input_bucket_name   = module.input_s3.input_bucket_name
#   output_bucket_name  = module.output_s3.output_bucket_name
# }
