# AWS NLB Live Infrastructure

Optional live Terraform configuration for a Network Load Balancer in front of the EKS worker node group.

This stack is not used for the primary microservices HTTP/S path. The production application path is Route 53 -> ACM/WAF -> ALB from AWS Load Balancer Controller -> Istio ingress gateway -> services. Keep this NLB stack only for TCP workloads or intentionally internal/private exposure.

The NLB stack reads:

- Networking remote state for `vpc_id` and `public_subnet_ids`
- EKS remote state for `node_group_autoscaling_group_names`

Apply order:

```text
networking -> eks -> nlb
```
