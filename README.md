# Terraform AWS Lab

![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws&logoColor=white)
![Status](https://img.shields.io/badge/status-learning%20lab-blue)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

Laboratorio pratico de Infrastructure as Code com Terraform para provisionamento de recursos AWS em ambiente de estudo.

O objetivo deste repositorio e demonstrar fundamentos de IaC, organizacao de codigo Terraform, boas praticas de variaveis, outputs, validacao e pipeline basico de verificacao no GitHub Actions.

## Objetivo do laboratorio

Criar uma base simples, segura e bem documentada para estudos de Terraform na AWS, com foco em:

- estrutura de projeto IaC;
- uso de providers;
- variaveis e outputs;
- validacao automatizada;
- padrao de repositorio profissional;
- preparacao para evolucao com EC2, VPC, S3, IAM e monitoramento.

## Recursos planejados

A primeira versao do laboratorio usa configuracoes seguras e de baixo risco, com foco em aprendizado.

Recursos previstos para evolucao:

- AWS Provider
- VPC simples
- Subnet publica
- Security Group
- Instancia EC2 de estudo
- Bucket S3 para arquivos de laboratorio
- Outputs importantes

## Estrutura

```txt
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

## Pre-requisitos

- Terraform instalado
- Conta AWS de estudo
- AWS CLI configurada
- Credenciais com permissoes limitadas

## Como usar

Inicialize o Terraform:

```bash
terraform init
```

Valide os arquivos:

```bash
terraform validate
```

Veja o plano:

```bash
terraform plan
```

Aplique somente quando tiver certeza:

```bash
terraform apply
```

Destrua os recursos apos o laboratorio:

```bash
terraform destroy
```

## Boas praticas

- Nunca versionar credenciais AWS.
- Nunca versionar `terraform.tfstate`.
- Usar usuario IAM com permissoes minimas.
- Rodar `terraform plan` antes de aplicar.
- Destruir recursos apos o estudo para evitar custos.

## Roadmap

- [x] Criar estrutura inicial do laboratorio
- [x] Adicionar pipeline de validacao Terraform
- [ ] Provisionar VPC simples
- [ ] Provisionar EC2 de estudo
- [ ] Adicionar backend remoto para state
- [ ] Criar modulo reutilizavel
- [ ] Integrar com laboratorio de monitoramento

## Autor

Desenvolvido por Marcelo Gomes.
