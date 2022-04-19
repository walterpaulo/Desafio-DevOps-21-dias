# [Treinamento: Desafio de 21 dias em DevOps](../../README.md)
[![menu](../../assets/menu.png)](./terraform.md)   
## 3 Ferramentas de implatação


 |               | Ansible       | Terraform       | Puppet     |
 | ------------- | ------------- | :-------------- | --------   |
 | Extensão      | .yml          | .tf             | .pp        |


### Instalação (para Ubuntu)

 ```
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

### Comandos
> Validar síntaxe do ansible 
```
ansible-playbook [provisionar.yml](./example/12-ansible/1/terraform/provisionar.yml) --syntax-check
```

### Tag

> host -> trabalhar com host específico;
```
- hosts:
  - maquina-ansible
  ```
  O "maquina-ansible" é uma variável e para ser validada precisa está entre chaves. No próximo exemplo define como atribui as variáveis, [exemplo](./example/12-ansible/exc.sh), o camando echo retorna a saída na tela de duas variáveis, maquina-ansible tipo ansible e $DNS Shell script. O maior que (>) envia o retorno mostrada na tela para variável hosts, tipo Shell script.
  ```
  echo "
[maquina-ansible]
$DNS
" > hosts
```

> tasks -> é uma tarefa
    
* -name: "Nome do host"
* shell: "Aqui informa o comando para ser executado"
* become: yes # rodo como sudo, super usuário

Exemplo:
```
- hosts:
  - maquina-ansible
- name: "Criando arquivo"
    shell: echo "testando criação" >> teste.txt

- name: "Criando um arquivo mantendo o estado" #segunda tarefa;
    copy: 
    content: "teste Walter Paulo" #v valor do conteúdo; 
    dest: "/home/ubuntu/mais_um_arquivo_com_estado.txt" # caminho do arquivo de destino;
    backup: yes
    owner: ubuntu #dono do arquivo
    group: ubuntu #dono do grupo
    mode: 400 # Tipo de permissão, arquivo somente dono pode executar e leitura;

 ```
