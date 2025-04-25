.PHONY: init-dev apply-dev destroy-dev init-prod apply-prod destroy-prod format

# Development Environment
init-dev:
	terraform init -backend-config=environment/dev/backend.tfvars

apply-dev:
	terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars

destroy-dev:
	terraform destroy --auto-approve -var-file=environment/dev/terraform.tfvars

# Production Environment
init-prod:
	terraform init -backend-config=environment/prod/backend.tfvars

apply-prod:
	terraform apply --auto-approve -var-file=environment/prod/terraform.tfvars

destroy-prod:
	terraform destroy --auto-approve -var-file=environment/prod/terraform.tfvars

# General Commands
format:
	terraform fmt --recursive