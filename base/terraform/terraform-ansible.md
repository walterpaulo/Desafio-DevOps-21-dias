# [Treinamento: Desafio de 21 dias em DevOps](../../README.md)
[![menu](../../assets/menu.png)](./terraform.md)   
## 3 Ferramentas de implatação


 |               | Ansible       | Terraform       | Puppet     |
 | ------------- | ------------- | :-------------- | --------   |
 | Extensão      | .yml          | .tf             | .pp        |


 > Instalação (para Ubuntu)

 ```
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

### Tag

> host -> trabalhar com host específico;

> tasks -> tarefas

- name: "nome da máquina"
- shell: hostname "maquina-ansible" && echo "maquina-ansible" > /etc/hostname
become: yes # todo script sudo como sudo


 ansible-playbook -i hosts provisionar.yml -u ubuntu --private-key $HOME/Desafio-DevOps-21-dias/base/terraform/example/providers/ssh/id_rsa