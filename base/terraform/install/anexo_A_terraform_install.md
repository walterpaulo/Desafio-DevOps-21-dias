# [Treinamento: Desafio de 21 dias em DevOps](../../../README.md)
## 4 ANEXO A - TERRAFORM

### Menu
1. [SHELL SCRIPT](../../shellscript/shellscript.md)
2. [TERRAFORM](../../terraform/terraform.md)
3. [REFERÊNCIAS](./../../credit/credit.md)
4. ANEXO A - TERRAFORM
5. [ANEXO B - AWS](../../terraform/install/anexo_B_aws_install.md)




### Terraform
É uma ferramenta pra open-source para criar infraestrutura via código, utiliza linguagem HCL, parecido com arquivos json utilizaremos o provider aws

### Instalação

##### Atualiza o repositório de pacotes e instala os pacotes gnupg(chave de criptografica), software-properties-common e curl(comunicacar com a internet)  em ambiente Debian e derivados.
```
$ sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
```

```
$ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
```

```
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
```