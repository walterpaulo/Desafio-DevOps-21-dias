# [Treinamento: Desafio de 21 dias em DevOps](../../README.md)
> Terraform
<hr>
Acredito que Devops define em: Mudanças, autamatizar processos manuais, mensurar resultados e compartilhar conhecimento.

### Menu
1. [Shell script](../shellscript/shellscript.md)
2. [Terraform](#)

### Comandos([arquivos do terraform](example))

#### Iniciar o projeto
```
terraform init
```

#### Mostrar o que vai fazer o provide, máquina ...
```
terraform apply
```

### Example

#### Primeiro teste
[main.tf](example/1/main.tf)

#### Criar 5 arquivos de forma dinâmica diferentes: count
[main.tf](example/2/main.tf)

#### Criando uma lista de variáveis e atribuindo nomes nos arquivos. Busca por key e value : variable

[main.tf](example/3/main.tf)

### Terraform [https://www.terraform.io/](https://www.terraform.io/)
É uma ferramenta pra open-source para criar infraestrutura via código, utiliza linguagem HCL, parecido com arquivos json utilizaremos o provider aws

#### Instalação do TerraForm [https://learn.hashicorp.com/tutorials/terraform/install-cli](https://learn.hashicorp.com/tutorials/terraform/install-cli)

##### Atualiza o repositório de pacotes e instala os pacotes gnupg(chave de criptografica), software-properties-common e curl(comunicacar com a internet)  em ambiente Debian e derivados
```
$ sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
```

```
$ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
```

```
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
```

#### Comando para mostrar versão do terraform
```
terraform -v
```

### Créditos
* Professor Danilo->([Linkedin](https://www.linkedin.com/in/danilo-aparecido-dos-santos-03101034/)) - Torne-se um programador->[https://www.torneseumprogramador.com.br/](https://www.torneseumprogramador.com.br/)

