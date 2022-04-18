#!/bin/bash

cd terrafrom/
terraform init
terraform apply -auto-approve

ANSILBLE_RETORNO=$(terraform output)
HOST=(${ANSILBLE_RETORNO//=/ }) # terraform output public_dns
DNS=${DNS[1]}

cd ../1

echo "
    [maquina-ansible]
    $DNS
" > hosts

 ansible -i hosts provisionar.yml -u ubuntu --private-key $HOME/Desafio-DevOps-21-dias/base/terraform/example/providers/ssh/id_rsa

