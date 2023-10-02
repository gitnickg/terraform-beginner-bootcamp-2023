# Terraform Beginner Bootcamp 2023

## Resources
- [Andrew Brown's repo](https://github.com/omenking/terraform-beginner-bootcamp-2023)

## Table of Contents
- [Semantic Versioning](#semantic-versioning)
- [Install Terraform CLI](#install-the-terraform-cli)
- [Install AWS CLI](#aws-cli-installation)
- [Terraform](#terraform)

## Semantic Versioning

This project is going to use symantix versioning for its tagging.
[semver.org](https://semver.org/)

Given a version number **MAJOR.MINOR.PATCH**, increment the:

**MAJOR** version when you make incompatible API changes
**MINOR** version when you add functionality in a backward compatible manner
**PATCH** version when you make backward compatible bug fixes

## Install the Terraform CLI

[Install Terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

### Terraform CLI Bash Script

`.gitpod.yml` calls `bin/install_terraform_cli` to install Terraform CLI

## Environment Variables

List all: `env`

Filter:  `env | grep AWS_`

Set: `export HELLO='world'`

Unset: `unset HELLO`

Printing: `echo $HELLO`

Gitpod: `gp env HELLO='world'`

## AWS CLI Installation

`.gitpod.yml` calls `bin/install_aws_cli` to install AWS cli

aws credentials check: `aws sts get-caller-identity`

## Terraform

[Terraform Providers](https://registry.terraform.io/)

### terraform commands

Intiate: `terraform init`

Plan: `terraform plan`

Apply: `terraform apply`

Output: `terraform output`

Destroy: `terraform destroy`

### Terraform Login Workaround in Gitpod
`.gitpod.yml` calls `./bin/generate_tfrc_credentials` to create the terraform credentials file and $TERRAFORM_CLOUD_TOKEN env var

### Terraform alias
`.gitpod.yml` calls `bin/set_tf_alias` to set `terraform` to `tf`

### Root Module Structure

- PROJECT_ROOT
  - variables.tf - stores the structure of input variables
  - main.tf - everything else
  - providers.tf - defined required providers and their configuration
  - outputs.tf - stores our outputs
  - terraform.tfvars - the data of variables we want to load into our terraform project
  - README.md - required for root modules

[Standard Module Strucrture](https://developer.hashicorp.com/terraform/language/modules/develop/structure)

### Terraform Variables

[Terraform Input Variables](https://developer.hashicorp.com/terraform/language/values/variables)

Order of execution:
- Environment variables - `env`
- Terraform variables file - `terraform.tfvars` or `terraform.tfvars.json`
- Terraform variables file - `.auto.tfvars` or `auto.tfvars.json`
- Flags when using tf init/plan/apply - `-var` or `-var-file`
- Variable defaults

### Terraform Modules

Modules go in their own module directory

[Modules Sources](https://developer.hashicorp.com/terraform/language/modules/sources)


### Terraform - Working with Files

https://developer.hashicorp.com/terraform/language/functions/fileexists

https://developer.hashicorp.com/terraform/language/functions/filemd5

### Path Variable

[Special Path Variable](https://developer.hashicorp.com/terraform/language/expressions/references#filesystem-and-workspace-info)

### Terraform Locals

[Local Values](https://developer.hashicorp.com/terraform/language/values/locals)

### Terraform Data Sources

[Data Sources](https://developer.hashicorp.com/terraform/language/data-sources)

### Working with JSON

[jsonencode](https://developer.hashicorp.com/terraform/language/functions/jsonencode)

### Changing the Lifecycle of Resources

[Meta Arguments Lifcycle](https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle)

### Terraform Data

[Terraform Data](https://developer.hashicorp.com/terraform/language/resources/terraform-data)

### Provisioners

[Provisioners](https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax)

### Local-exec

[Local Exec](https://developer.hashicorp.com/terraform/language/resources/provisioners/local-exec)

### Remote-exec

[Remote Exec](https://developer.hashicorp.com/terraform/language/resources/provisioners/remote-exec)