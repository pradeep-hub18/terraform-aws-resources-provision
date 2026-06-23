aws_region       = "ap-south-1"
project_name     = "microservices-demo-edge"
environment      = "STAGE"
hosted_zone_name = "example.com"
app_domain       = "stage.example.com"

enable_alb_deletion_protection = true

tags = {
  Owner      = "platform-team"
  ManagedBy  = "terraform"
  CostCenter = "learning"
}
