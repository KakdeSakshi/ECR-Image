output "ecr_repo_url" {
  value = aws_ecr_repository.lambda_repo.repository_url
}

output "s3_bucket_name" {
  value = aws_s3_bucket.lambda_bucket.bucket
}

output "lambda_function_name" {
  value = aws_lambda_function.node_lambda.function_name
}
