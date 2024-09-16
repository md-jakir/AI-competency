provider "aws" {
  region = "ap-south-1"
}

module "input_s3" {
  source              = "../modules/inputS3Bucket"
  input_bucket_name   = "cv-input-bucket"
}

module "output_s3" {
  source              = "../modules/outputS3Bucket"
  output_bucket_name  = "cv-output-bucket"
  topic_sns_arn = module.sns.sns_topic_arn
  topic_sns_id = module.sns.sns_topic_id
}

module "sns" {
  source          = "../modules/SNS"
  sns_topic_name  = "cv-classification-topic"
  sns_topic_arn = module.sns.sns_topic_arn
  output_bucket_arn = module.output_s3.output_bucket_arn
}


module "comprehend" {
  source              = "../modules/comprehend"
  classifier_name     = "cv-classifier"
  input_bucket_name   = module.input_s3.input_bucket_name
  output_bucket_name  = module.output_s3.output_bucket_name
  data_access_role_arn = module.iam.comprehend_role_arn
  iam_role_policy_name = module.iam.iam_role_policy_name
  comprehend_iam_role_name = module.iam.iam_role_name
}

module "iam" {
  source              = "../modules/iam"
  input_bucket_name   = module.input_s3.input_bucket_name
  output_bucket_name  = module.output_s3.output_bucket_name
  arn_sns_topic = module.sns.sns_topic_arn
  //output_bucket_arn   = module.output_s3.output_bucket_arn
}
