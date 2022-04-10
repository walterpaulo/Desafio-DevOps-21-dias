#!/bin/sh

export TF_VAR_nome=walter
export TF_VAR_idade=33
export TF_VAR_casado=true


terraform init
terraform apply -auto-approve
