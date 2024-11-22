variable "region" {
  description = "AWS region"
  type        = string
}

variable "iam_user_name" {
  description = "Name of the IAM user"
  type        = string
}

variable "iam_policy" {
  description = "IAM policy for the user"
  type        = string
  default     = <<EOT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:Describe*",
      "Resource": "*"
    }
  ]
}
EOT
}
