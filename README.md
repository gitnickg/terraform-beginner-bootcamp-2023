# Terraform Beginner Bootcamp 2023

## Semantic Versioning :mage:

This project is going to use symantix versioning for its tagging.
[semver.org](https://semver.org/)

Given a version number **MAJOR.MINOR.PATCH**, increment the:

**MAJOR** version when you make incompatible API changes
**MINOR** version when you add functionality in a backward compatible manner
**PATCH** version when you make backward compatible bug fixes

## Install the Terraform CLI

[Install Terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

### Bash Script

.gitpod.yml calls bin/install_terraform_cli to install Terraform CLI

## Environment Variables

List all: `env`

Filter:  `env | grep AWS_`

Set: `export HELLO='world'`

Unset: `unset HELLO`

Printing: `echo $HELLO`

Gitpod: `gp env HELLO='world'`