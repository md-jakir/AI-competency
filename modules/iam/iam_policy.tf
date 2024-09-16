resource "aws_iam_role" "comprehend_role" {
  name = "comprehend-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = {
        Service = "comprehend.amazonaws.com"
      },
      Action = "sts:AssumeRole"
    }]
  })
}

# new iam role and policy

resource "aws_iam_policy" "comprehend_policy" {
  name = "ComprehendPolicy"
  
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "s3:GetObject"
        ],
        Resource = [
          "arn:aws:s3:::${var.input_bucket_name}/*"
        ]
      },
      {
        Effect = "Allow",
        Action = [
          "s3:GetObject",
          "s3:PutObject"
        ],
        Resource = [
          "arn:aws:s3:::${var.output_bucket_name}/*"
        ]
      },
      {
        Effect = "Allow",
        Action = [
          "s3:ListBucket"
        ],
        Resource = [
          "arn:aws:s3:::${var.input_bucket_name}",
          "arn:aws:s3:::${var.output_bucket_name}"
        ]
      },
      {
        Effect = "Allow",
        Action = ["sns:Publish"],
        Resource = [var.arn_sns_topic]
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "comprehend_policy_attach" {
  role       = aws_iam_role.comprehend_role.name
  policy_arn = aws_iam_policy.comprehend_policy.arn
}
