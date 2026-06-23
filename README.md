# Terraform AWS Resources Provision

Live Terraform configurations for AWS networking, ECR, EKS, edge routing, EKS platform add-ons, and optional NLB resources.

## Structure

```text
terraform-aws-resources-provision/
+-- networking/
|   +-- environments/
|       +-- DEV/
|       +-- STAGE/
+-- eks/
|   +-- environments/
|       +-- DEV/
|       +-- STAGE/
+-- edge-routing/
|   +-- environments/
|       +-- DEV/
|       +-- STAGE/
+-- eks-platform/
|   +-- environments/
|       +-- DEV/
|       +-- STAGE/
+-- nlb/
|   +-- environments/
|       +-- DEV/
|       +-- STAGE/
+-- ecr/
|   +-- environments/
|       +-- DEV/
|       +-- STAGE/
+-- .github/
    +-- workflows/
        +-- terraform.yml
```

## Run Order

Apply in this order:

1. `networking`
2. `ecr`
3. `eks`
4. `edge-routing`
5. `eks-platform`
6. GitOps application sync from `microservices-demo-app`

The `nlb` stack is optional and not part of the primary public HTTP/S application path. Public application traffic should use Route 53, ACM, WAF, AWS Load Balancer Controller, ALB Ingress, and Istio.

EKS reads these networking remote state outputs:

- `vpc_id`
- `private_subnet_ids`

EKS platform reads these remote state outputs:

- From networking: `vpc_id`, `public_subnet_ids`
- From EKS: `cluster_name`, `oidc_provider_arn`, `oidc_provider_host`
- From edge-routing: `domain_name`

NLB reads these remote state outputs only if you intentionally use it for TCP/internal traffic:

- From networking: `vpc_id`, `public_subnet_ids`
- From EKS: `node_group_autoscaling_group_names`

## Remote State

Both components use the same S3 bucket and DynamoDB lock table:

```text
bucket: pradeep-demo-network-terraform-state
dynamodb_table: demo-network-terraform-locks
region: ap-south-1
```

State keys:

```text
networking/DEV/terraform.tfstate
networking/STAGE/terraform.tfstate
eks/DEV/terraform.tfstate
eks/STAGE/terraform.tfstate
nlb/DEV/terraform.tfstate
nlb/STAGE/terraform.tfstate
ecr/DEV/terraform.tfstate
ecr/STAGE/terraform.tfstate
edge-routing/DEV/terraform.tfstate
edge-routing/STAGE/terraform.tfstate
eks-platform/DEV/terraform.tfstate
eks-platform/STAGE/terraform.tfstate
```

## GitHub Actions

Workflow:

```text
.github/workflows/terraform.yml
```

Manual inputs:

```text
component: networking, ecr, eks, edge-routing, eks-platform, or nlb
environment: DEV or STAGE
action: plan, apply, destroy, or refresh
```

Preferred GitHub Actions secret:

```text
AWS_ROLE_ARN
```

Static key fallback secrets:

```text
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```

The current sample DNS values use `example.com`, `dev.example.com`, and `stage.example.com`. Replace them with the real existing Route 53 hosted zone and application domains before applying `edge-routing`.
