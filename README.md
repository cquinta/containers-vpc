# Containers VPC

This repository contains Terraform configurations for setting up a VPC infrastructure for AWS containers. It's part of the AWS Containers course.

## Infrastructure Components

- VPC with DNS support
- Public, Private, and Database subnets across 3 availability zones
- Internet Gateway for public internet access
- NAT Gateways for private subnet internet access
- Route tables for traffic management
- SSM Parameters for storing infrastructure IDs

## Environment Setup

The project supports multiple environments (dev, prod) with environment-specific configurations.

### Using Terraform Commands

#### Development Environment

```bash
# Initialize Terraform with dev backend configuration
terraform init -backend-config=environment/dev/backend.tfvars

# Apply the configuration for dev environment
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars
```

#### Production Environment

```bash
# Initialize Terraform with prod backend configuration
terraform init -backend-config=environment/prod/backend.tfvars

# Apply the configuration for prod environment
terraform apply --auto-approve -var-file=environment/prod/terraform.tfvars
```

### Using Makefile

The repository includes a Makefile for easier command execution:

```bash
# Development Environment
make init-dev    # Initialize Terraform for dev
make apply-dev   # Apply changes to dev
make destroy-dev # Destroy dev infrastructure

# Production Environment
make init-prod    # Initialize Terraform for prod
make apply-prod   # Apply changes to prod
make destroy-prod # Destroy prod infrastructure

# General Commands
make format      # Format Terraform code
```

## Related Repositories

- Course Central Repository: https://github.com/msfidelis/linuxtips-curso-containers-aws
- ECS + EC2 Repository: https://github.com/msfidelis/linuxtips-curso-containers-ecs-cluster


