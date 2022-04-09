# [Treinamento: Desafio de 21 dias em DevOps](../../README.md)
## 2 TERRAFORM
<hr>
Acredito que Devops define em: Mudanças, autamatizar processos manuais, mensurar resultados e compartilhar conhecimento.

### Menu
1. [SHELL SCRIPT](../shellscript/shellscript.md)
2. TERRAFORM
3. [REFERÊNCIAS](./../credit/credit.md)
4. [ANEXO A - TERRAFORM](../terraform/install/anexo_A_terraform_install.md)
5. [ANEXO B - AWS](../terraform/install/anexo_B_aws_install.md)

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

#### *Ver ip- entra na modo console
```
aws_instance.vm.public_ip
```

#### *Atualiza innformações locais, arquivo terraform.tfstate.
```
terraform refresh
```

#### Configurar acesso da aws
```
aws configure
```
* Informar ID;
* Colocar key;
* Inserir formato, json.

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


#### Gerar par de chave 
```
ssh-keygen
```

#### *Criar security group, vms 

<!-- Pega o conteúdo -->
[main.tf](example/providers/3/main.tf)

#### *Pegar o id de image dinamicamente
acessar o console
```
data.aws_ami.ubuntu.id
```
A key ami recebe o comando acima.
```
...
ami           = data.aws_ami.ubuntu.id
...
```


[main.tf](example/providers/4-data/main.tf)

>   *Válido no diretório do arquivo de extensão .tf