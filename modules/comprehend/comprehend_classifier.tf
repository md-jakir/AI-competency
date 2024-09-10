# resource "aws_comprehend_document_classifier" "cv_classifier" {
#   document_classifier_name = var.classifier_name
#   language_code            = "en"

#   input_data_config {
#     s3_uri = "s3://${var.input_bucket_name}/training-data/"
#   }

#   output_data_config {
#     s3_uri = "s3://${var.output_bucket_name}/classified-output/"
#   }

#   data_access_role_arn = aws_iam_role.comprehend_role.arn
# }
