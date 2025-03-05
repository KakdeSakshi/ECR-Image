resource "aws_ecr_repository" "lambda_repo" {
  name = "lambda-nodejs-repo"
  image_tag_mutability = "MUTABLE" # Allows updating "latest"
}
