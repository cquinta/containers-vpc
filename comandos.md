# Referências dos comandos

## Terraform

### Ambiente de Desenvolvimento (Dev)

Para iniciar o terraform no ambiente de dev

```bash
terraform init -backend-config=environment/dev/backend.tfvars
```

Para aplicar as configurações no ambiente de dev

```bash
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars
```

Para destruir o projeto no ambiente de dev

```bash
terraform destroy --auto-approve -var-file=environment/dev/terraform.tfvars
```

### Ambiente de Produção (Prod)

Para iniciar o terraform no ambiente de prod

```bash
terraform init -backend-config=environment/prod/backend.tfvars
```

Para aplicar as configurações no ambiente de prod

```bash
terraform apply --auto-approve -var-file=environment/prod/terraform.tfvars
```

Para destruir o projeto no ambiente de prod

```bash
terraform destroy --auto-approve -var-file=environment/prod/terraform.tfvars
```

### Comandos Gerais

Para formatar o código

```bash
terraform fmt --recursive
```

## Makefile

O repositório inclui um Makefile para facilitar a execução de comandos:

```bash
# Ambiente de Desenvolvimento
make init-dev    # Inicializar Terraform para dev
make apply-dev   # Aplicar mudanças em dev
make destroy-dev # Destruir infraestrutura de dev

# Ambiente de Produção
make init-prod    # Inicializar Terraform para prod
make apply-prod   # Aplicar mudanças em prod
make destroy-prod # Destruir infraestrutura de prod

# Comandos Gerais
make format      # Formatar código Terraform
```

# Repositórios

Repositório Central do Curso - https://github.com/msfidelis/linuxtips-curso-containers-aws
Repositório ECS + EC2 - https://github.com/msfidelis/linuxtips-curso-containers-ecs-cluster

