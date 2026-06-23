aws_region   = "ap-south-1"
project_name = "demo-eks-platform"
environment  = "DEV"

networking_state_bucket = "pradeep-demo-network-terraform-state"
networking_state_key    = "networking/DEV/terraform.tfstate"
networking_state_region = "ap-south-1"

eks_state_bucket = "pradeep-demo-network-terraform-state"
eks_state_key    = "eks/DEV/terraform.tfstate"
eks_state_region = "ap-south-1"

edge_routing_state_bucket = "pradeep-demo-network-terraform-state"
edge_routing_state_key    = "edge-routing/DEV/terraform.tfstate"
edge_routing_state_region = "ap-south-1"

tags = {
  Owner      = "platform-team"
  ManagedBy  = "terraform"
  CostCenter = "learning"
}
