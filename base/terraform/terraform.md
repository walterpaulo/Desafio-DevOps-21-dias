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

#### *Data: consultar api viacep,
No console, digete este comando para obter o corpo da mensagem,cep, logradouro comprementos, bairro, localidade ...
```
data.http.api_viacep.body
```
[main.tf](example/providers/4-data/api/main.tf)

#### Solicitar nome de variável
[main.tf](example/5-variaveis/1/main.tf)

#### Solicita variáveis: nome, idade e true ou false para casado
[main.tf](example/5-variaveis/2/main.tf)

#### Solicita variáveis de output(terminal): nome, idade e true ou false para casado 
[main.tf](example/6-output/1/main.tf)


#### Pegar um item do array: output 
[main.tf](example/6-output/2/main.tf)


#### Lista todos itens do array: output 
[main.tf](example/6-output/3/main.tf)


#### Lista de valores definidos: map 
[main.tf](example/6-output/4/main.tf)

#### Lista de objeto: map 
[main.tf](example/6-output/5/main.tf)

#### Lista de objeto estruturado: object 
[main.tf](example/6-output/6/main.tf)

#### Solicitando valor de campo(senha): sensitive
[main.tf](example/6-output/7/main.tf)

#### Captura de variáveis de ambiente: aux. Shell script
as variáveis do terraform começam com TF_VAR_***
[main.tf](example/6-output/8/main.tf)



>   *Válido no diretório do arquivo de extensão .tf