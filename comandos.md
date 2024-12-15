# Referências dos comandos

## Terraform


Para iniciar o terraform no ambiente de dev

```bash
terraform init -backend-config=environment/dev/backend.tfvars
```

Para aplicar as configurações no ambiente de dev

```bash
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars

```
Para formatar o código

```bash
terraform fmt --recursive
```

Para destruir o projeto

```bash

terraform destroy --auto-approve -var-file=environment/dev/terraform.tfvars

```