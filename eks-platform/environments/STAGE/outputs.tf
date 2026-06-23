output "aws_load_balancer_controller_role_arn" {
  description = "IAM role ARN used by AWS Load Balancer Controller."
  value       = module.eks_platform.aws_load_balancer_controller_role_arn
}

output "external_secrets_role_arn" {
  description = "IAM role ARN used by External Secrets Operator."
  value       = module.eks_platform.external_secrets_role_arn
}

output "argocd_namespace" {
  description = "Argo CD namespace."
  value       = module.eks_platform.argocd_namespace
}

output "istio_namespace" {
  description = "Istio namespace."
  value       = module.eks_platform.istio_namespace
}

output "app_domain" {
  description = "Application domain from edge-routing remote state."
  value       = data.terraform_remote_state.edge_routing.outputs.domain_name
}
