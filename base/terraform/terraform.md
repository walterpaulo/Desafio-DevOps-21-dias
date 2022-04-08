# [Treinamento: Desafio de 21 dias em DevOps](../../README.md)
## 2 TERRAFORM
<hr>
Acredito que Devops define em: Mudanças, autamatizar processos manuais, mensurar resultados e compartilhar conhecimento.

### Menu
1. [SHELL SCRIPT](../shellscript/shellscript.md)
2. [TERRAFORM](../terraform/terraform.md)
3. [REFERÊNCIAS](./../credit/credit.md)
4. ANEXO A - TERRAFORM
    * [Instalação](../terraform/install/anexo_A_terraform_install.md)
5. ANEXO B - AWS
    * [Instalação](../terraform/install/anexo_B_aws_install.md)

### Comandos([arquivos do terraform](example))

#### Iniciar projeto
```
terraform -v
```

#### Iniciar projeto
```
terraform init
```

#### Executar ações, máquina ...
```
terraform apply
```

#### *Mostrar planejamento
```
terraform plan
```

#### *Destruir vm
```
terraform destroy
```

#### *Acessar console
```
aws console
```

#### Configurar acesso da aws
```
aws configure
```
* Informar ID;
* Colocar key;
* Inserir formato, json.

>   *Válido no diretório do arquivo de extensão .tf


### Example

#### Primeiro teste
[main.tf](example/1/main.tf)

#### Criar 5 arquivos de forma dinâmica diferentes: count
[main.tf](example/2/main.tf)

#### Criando uma lista de variáveis e atribuindo nomes nos arquivos. Busca por key e value : variable
[main.tf](example/3/main.tf)

#### Criando uma lista de variáveis e atribuindo nomes nos arquivos. Busca por key e value : for_each
[main.tf](example/3/main.tf)

#### Proveder da aws
[main.tf](example/providers/1/main.tf)

### Terraform [https://www.terraform.io/](https://www.terraform.io/)
É uma ferramenta pra open-source para criar infraestrutura via código, utiliza linguagem HCL, parecido com arquivos json utilizaremos o provider aws

#### Comando para mostrar versão do terraform
```
terraform -v
```

### Créditos
* Professor Danilo->([Linkedin](https://www.linkedin.com/in/danilo-aparecido-dos-santos-03101034/)) - Torne-se um programador->[https://www.torneseumprogramador.com.br/](https://www.torneseumprogramador.com.br/)

