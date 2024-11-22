output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = module.vpc.public_subnet_ids
}

output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = module.ec2.ec2_instance_id
}

output "ec2_instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.ec2.ec2_instance_public_ip
}

output "iam_user_name" {
  description = "The IAM user's name"
  value       = module.iam.iam_user_name
}

output "iam_access_key_id" {
  description = "The IAM user's access key ID"
  value       = module.iam.iam_access_key_id
}

output "iam_secret_access_key" {
  description = "The IAM user's secret access key"
  value       = module.iam.iam_secret_access_key
  sensitive   = true
}
