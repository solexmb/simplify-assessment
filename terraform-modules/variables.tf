variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.30.0.0/16"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "dev-vpc"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.30.1.0/24", "10.30.2.0/24"]
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-012967cc5a8c9f891"
}

variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name for EC2"
  type        = string
  default     = "simply-demo"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "simplify-demo"
}

variable "allowed_cidrs" {
  description = "List of CIDRs allowed to connect to EC2"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "iam_user_name" {
  description = "Name of the IAM user"
  type        = string
  default     = "dev-iam-user"
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
