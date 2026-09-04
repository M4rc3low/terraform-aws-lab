# Terraform AWS Lab

[![Terraform CI](https://github.com/M4rc3low/terraform-aws-lab/actions/workflows/terraform.yml/badge.svg)](https://github.com/M4rc3low/terraform-aws-lab/actions/workflows/terraform.yml)
![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws&logoColor=white)
![Status](https://img.shields.io/badge/status-learning%20lab-blue)
![License](https://img.shields.io/badge/license-MIT-green)

Laboratório prático de **Infrastructure as Code com Terraform na AWS**, criado para estudar provisionamento reproduzível, organização de código, segurança básica e validação automatizada.

## Estado atual

O laboratório já possui:

- Provider AWS configurável
- Variáveis e outputs separados
- Padronização de nome do projeto por `locals`
- Bucket S3 de demonstração criado de forma opcional
- Bloqueio explícito de acesso público no bucket
- `terraform.tfvars.example`
- `.gitignore` preparado para state e arquivos locais
- Pipeline no GitHub Actions com `fmt`, `init -backend=false` e `validate`

O bucket é condicionado pela variável `create_demo_bucket`, permitindo validar a estrutura do laboratório sem obrigar a criação do recurso em todos os usos.

## Estrutura

```text
terraform-aws-lab/
├── main.tf
├── providers.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── terraform.tfvars.example
├── .gitignore
├── .github/workflows/terraform.yml
└── README.md
```

## Pré-requisitos

Para apenas validar o código localmente:

- Terraform instalado

Para executar `plan`/`apply` com recursos reais:

- Conta AWS de estudo
- AWS CLI configurada ou outro método seguro de autenticação
- Credenciais com permissões mínimas necessárias

## Como usar

```bash
terraform init
terraform fmt -check -recursive
terraform validate
terraform plan
```

Aplique somente quando tiver revisado o plano e entendido os possíveis custos:

```bash
terraform apply
```

Ao terminar o laboratório, destrua os recursos que não serão mais usados:

```bash
terraform destroy
```

## CI

A pipeline de GitHub Actions valida automaticamente:

```text
terraform fmt -check -recursive
terraform init -backend=false
terraform validate
```

O CI não executa `terraform apply` e não precisa de credenciais AWS para publicar recursos.

## Boas práticas de segurança

- Nunca versionar credenciais AWS.
- Nunca versionar `terraform.tfstate` ou arquivos `.tfvars` reais com dados sensíveis.
- Usar permissões mínimas no IAM.
- Revisar `terraform plan` antes de aplicar.
- Manter bloqueio de acesso público quando um bucket não precisa ser público.
- Destruir recursos de estudo após o uso para evitar custos inesperados.

## Roadmap

- [x] Criar estrutura inicial do laboratório
- [x] Adicionar pipeline de validação Terraform
- [x] Criar recurso S3 opcional com bloqueio de acesso público
- [ ] Provisionar VPC simples
- [ ] Provisionar subnet e security group de estudo
- [ ] Provisionar EC2 de estudo
- [ ] Adicionar backend remoto para state
- [ ] Criar módulo reutilizável
- [ ] Integrar com laboratório de monitoramento

## Valor profissional

Este repositório demonstra fundamentos de **IaC, segurança básica em cloud, validação automatizada e organização reproduzível de infraestrutura**, sem apresentar recursos ainda não implementados como se já estivessem prontos.

## Autor

Desenvolvido por Marcelo Gomes.
