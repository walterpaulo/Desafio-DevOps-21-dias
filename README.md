# Treinamento: Desafio de 21 dias em DevOps

Acredito que Devops define em: Mudanças, autamatizar processos manuais, mensurar resultados e compartilhar conhecimento.

### Importânte
* arquivos .sh no diretório base;
* arquivos do TerraForm no diretório base/terraform [base/terraform](base/terraform);
* executar: ./nomeDoArquivo.sh


### Comandos([arquivos de shellScript](base/))

#### Listar conteúdo do diretório(permissões e arquivos oculto), ls -la
[base/listar-dados-diretorio.sh](base/listar-dados-diretorio.sh)

##### Exercício 1 
[base/criado_via_script.sh](base/criado_via_script.sh)

##### Criar diretório, mkdir 
[base/criar_diretorio.sh](base/criar_diretorio.sh)

#### Criar aquivo, touch ou echo
[base/criar_arquivo.sh](base/criar_arquivo.sh)

#### Pegar parâmetros com "read"
[base/input-usuario.sh](base/input-usuario.sh)

#### Condicional se/if
[base/condicional.sh](base/condicional.sh)

#### Verificar conteúdo dentro de frase
[base/indexof.sh](base/indexof.sh)

#### Regex: # =~ operador de regex 
[base/regex.sh](base/regex.sh)

##### [https://rubular.com/](https://rubular.com/)

#### Retorna uma array por índice: split
[base/split.sh](base/split.sh)

#### Retorna uma array por índice: split (forma 2)
[base/split2.sh](base/split2.sh)

#### Pegar uma coleção de string a partir de um ponto: ${nomeVariavel:0:4}
[base/substring.sh](base/substring.sh)

#### Loop/laço: while, for e for + ls
[base/loop.sh](base/loop.sh)

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

