output "iam_user_name" {
  description = "The IAM user's name"
  value       = aws_iam_user.user.name
}

output "iam_access_key_id" {
  description = "The IAM user's access key ID"
  value       = aws_iam_access_key.access_key.id
}

output "iam_secret_access_key" {
  description = "The IAM user's secret access key"
  value       = aws_iam_access_key.access_key.secret
    sensitive  = true
}
