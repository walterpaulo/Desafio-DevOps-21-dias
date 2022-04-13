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


<br>

[![Ver comandos](../../assets/images/BOTAO-COMANDO.png)](./terraform-comandos.md)
[![Ver exemplos](../../assets/images/BOTAO-EXEMPLO.png)](./terraform-exemplos.md)

### Comandos

> Iniciar projeto
```
terraform -v
```

> Inicia projeto, ponto de partida
```
terraform init
```

> Executa as ações propostas num plano
```
terraform apply
```

> *Mostrar planejamento
```
terraform plan
```

> *Destrói todos os objetos
```
terraform destroy
```

> *Acessar console
```
aws console
```

> *Ver ip- entra na modo console
```
aws_instance.vm.public_ip
```

> *Atualiza innformações locais, arquivo terraform.tfstate.
```
terraform refresh
```

> Configurar acesso da aws
```
aws configure
```
* Informar ID;
* Colocar key;
* Inserir formato, json.

>   *Válido no diretório do arquivo de extensão .tf