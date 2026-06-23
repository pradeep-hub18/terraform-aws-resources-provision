module "networking" {
  source = "git::https://github.com/pradeep-hub18/my-terraform-modules.git//modules/networking?ref=main"

  project_name         = var.project_name
  environment          = var.environment
  aws_region           = var.aws_region
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  enable_nat_gateway   = var.enable_nat_gateway
  single_nat_gateway   = var.single_nat_gateway
  enable_vpc_endpoints = var.enable_vpc_endpoints
  tags                 = var.tags
}
