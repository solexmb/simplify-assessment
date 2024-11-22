#Terraform AWS Modules: VPC, EC2, and IAM User

This project provisions AWS resources using Terraform modules, including a VPC, an EC2 instance, and an IAM user. The configuration is modular, making it easy to manage and reuse.

## Features

- **VPC Module**:
  - Creates a VPC with public subnets.
  - Configurable CIDR block and subnet ranges.
  
- **EC2 Module**:
  - Launches an EC2 instance in the specified subnet.
  - Configurable AMI, instance type, key pair, and security groups.
  
- **IAM Module**:
  - Creates an IAM user with access credentials.
  - Attaches a custom IAM policy.

## Requirements

- **Terraform**: v1.0+
- **AWS CLI** (optional for setup/testing)
- AWS credentials configured via environment variables, credentials file

## Usage

1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd <repository-folder>

2. **Initialize Terraform: Run the following command to initialize Terraform and download the required provider plugins**:
   ```bash
   terraform init

3. **Set Variables: Configure the terraform.tfvars file with your desired values. For example**:
   ```bash
   region        = "us-east-1"
   ami_id        = "ami-012967cc5a8c9f891"
   instance_type = "t2.micro"
   key_name      = "simplify-demo"
   instance_name = "simplify-demo"
   iam_user_name = "dev-iam-user"

4. **Plan the Deployment: Preview the changes that Terraform will make to your AWS environment**:
   ```bash
   terraform plan

5. **Apply the Configuration: Deploy the resources to your AWS account**:
   ```bash
   terraform apply

6. **View Outputs: After the deployment is complete, Terraform will display the following outputs**:
   ```bash
   VPC ID
   Public Subnet IDs
   EC2 Instance ID and Public IP
   IAM User Name and Access Keys

## Notes

Key Pair: Ensure the key_name variable refers to an existing key pair in the AWS region.
AMI: Update the ami_id variable with a valid AMI ID for your region.
Sensitive Outputs: IAM credentials are marked as sensitive and will not be displayed in the Terraform logs. Save them securely.