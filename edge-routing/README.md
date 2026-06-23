# Edge Routing

Live Terraform configuration for DNS-adjacent public application edge resources.

This stack creates the ACM certificate and WAF Web ACL used by the Kubernetes ALB Ingress. The ALB itself is created by AWS Load Balancer Controller from the Helm chart in `microservices-demo-app`.

Apply this stack after `eks` and before `eks-platform`/GitOps app sync.
