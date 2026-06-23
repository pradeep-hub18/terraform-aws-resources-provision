output "domain_name" {
  description = "Customer-facing application DNS name."
  value       = module.edge_routing.domain_name
}

output "certificate_arn" {
  description = "Validated ACM certificate ARN."
  value       = module.edge_routing.certificate_arn
}

output "waf_acl_arn" {
  description = "WAFv2 Web ACL ARN."
  value       = module.edge_routing.waf_acl_arn
}

output "alb_ingress_annotations" {
  description = "Recommended Kubernetes ALB Ingress annotations."
  value       = module.edge_routing.alb_ingress_annotations
}
