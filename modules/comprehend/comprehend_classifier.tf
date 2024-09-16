resource "aws_comprehend_document_classifier" "custom_classifier" {
  language_code            = "en"
  name = var.classifier_name

  input_data_config {
    s3_uri = "s3://${var.input_bucket_name}"
    //s3_uri = "s3://${var.input_bucket_name}/training-data/"
  }

  output_data_config {
    s3_uri = "s3://${var.output_bucket_name}"
    //s3_uri = "s3://${var.output_bucket_name}/output-data/"
  }

  data_access_role_arn = var.data_access_role_arn

  depends_on = [
    var.comprehend_iam_role_name,
    var.iam_role_policy_name,
    var.input_bucket_name,
    var.output_bucket_name
  ]
}
