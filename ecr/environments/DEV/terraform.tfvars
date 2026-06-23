aws_region   = "ap-south-1"
project_name = "microservices-demo-app"
environment  = "DEV"

repository_names = [
  "microapps/auth-service",
  "microapps/catalog-service"
]

image_tag_mutability       = "IMMUTABLE"
force_delete               = false
scan_on_push               = true
encryption_type            = "AES256"
enable_lifecycle_policy    = true
untagged_image_expire_days = 7
max_tagged_image_count     = 30

create_full_access_policy = true
full_access_policy_name   = "microservices-demo-app-DEV-ecr-full-access"

full_access_iam_user_names = [
  "pradeep-IAM"
]

full_access_iam_role_names            = []
full_access_iam_group_names           = []
repository_full_access_principal_arns = []

create_ci_push_policy  = true
ci_push_policy_name    = "microservices-demo-app-DEV-ecr-ci-push"
ci_push_iam_role_names = []
ci_push_iam_user_names = [
  "pradeep-IAM"
]

tags = {
  Owner      = "platform-team"
  ManagedBy  = "terraform"
  CostCenter = "learning"
}
