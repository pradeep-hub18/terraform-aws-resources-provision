data "terraform_remote_state" "networking" {
  backend = "s3"

  config = {
    bucket = var.networking_state_bucket
    key    = var.networking_state_key
    region = var.networking_state_region
  }
}

data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket = var.eks_state_bucket
    key    = var.eks_state_key
    region = var.eks_state_region
  }
}

data "terraform_remote_state" "edge_routing" {
  backend = "s3"

  config = {
    bucket = var.edge_routing_state_bucket
    key    = var.edge_routing_state_key
    region = var.edge_routing_state_region
  }
}

module "eks_platform" {
  source = "git::https://github.com/pradeep-hub18/my-terraform-modules.git//modules/eks-platform?ref=main"

  project_name       = var.project_name
  environment        = var.environment
  cluster_name       = data.terraform_remote_state.eks.outputs.cluster_name
  vpc_id             = data.terraform_remote_state.networking.outputs.vpc_id
  oidc_provider_arn  = data.terraform_remote_state.eks.outputs.oidc_provider_arn
  oidc_provider_host = data.terraform_remote_state.eks.outputs.oidc_provider_host
  tags               = var.tags
}
