provider "aws" {
  region = var.region
}

resource "aws_iam_user" "user" {
  name = var.iam_user_name
}

resource "aws_iam_access_key" "access_key" {
  user = aws_iam_user.user.name
}

resource "aws_iam_user_policy" "user_policy" {
  name   = "${var.iam_user_name}-policy"
  user   = aws_iam_user.user.name
  policy = var.iam_policy
}
