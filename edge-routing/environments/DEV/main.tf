module "edge_routing" {
  source = "git::https://github.com/pradeep-hub18/my-terraform-modules.git//modules/edge-routing?ref=main"

  project_name                   = var.project_name
  environment                    = var.environment
  hosted_zone_name               = var.hosted_zone_name
  app_domain                     = var.app_domain
  enable_alb_deletion_protection = var.enable_alb_deletion_protection
  tags                           = var.tags
}
