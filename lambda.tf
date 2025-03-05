resource "aws_lambda_function" "node_lambda" {
  function_name = "nodejs-lambda"
  role          = aws_iam_role.lambda_role.arn
  image_uri     = "${aws_ecr_repository.lambda_repo.repository_url}:latest"
  package_type  = "Image"
  timeout       = 10
  memory_size   = 512

  environment {
    variables = {
      BUCKET_NAME = aws_s3_bucket.lambda_bucket.bucket
    }
  }
}

