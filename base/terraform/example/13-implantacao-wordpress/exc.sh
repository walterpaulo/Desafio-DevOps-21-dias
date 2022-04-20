#!/bin/bash

cd terraform/
terraform init
terraform apply -auto-approve

#ANSILBLE_RETORNO=$(terraform output)
#HOST=(${ANSILBLE_RETORNO//=/ }) # terraform output public_dns
echo ""
echo "conectando... 20s"
sleep 20

ANSIBLE_RETORNO=$(terraform output)
DNS=(${ANSIBLE_RETORNO//=/ })
DNS=${DNS[1]}
DNS=$(echo $DNS | sed -e "s/\"//g")

# DNS=$(terraform output public_dns) # Rafa mais reduzido

cd ../ansible

echo "
[wordpress]
$DNS
" > hosts

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hosts terraform/provisionar.yml -u ubuntu --private-key ../../providers/ssh/id_rsa
ssh -i ../../providers/ssh/id_rsa ubuntu@$DNS -o ServerAliveInterval=60