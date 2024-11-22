module "vpc" {
  source              = "./vpc"
  region              = var.region
  vpc_cidr            = var.vpc_cidr
  vpc_name            = var.vpc_name
  public_subnet_cidrs = var.public_subnet_cidrs
}

module "ec2" {
  source        = "./ec2"
  region        = var.region
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  instance_name = var.instance_name
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.public_subnet_ids[0]
  allowed_cidrs = var.allowed_cidrs
}

module "iam" {
  source        = "./iam"
  region        = var.region
  iam_user_name = var.iam_user_name
  iam_policy    = var.iam_policy
}
