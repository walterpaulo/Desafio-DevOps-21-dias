output "informacoes_vms" {
  value = [
    for vm in aws_instance.vm :
    "ssh -i $HOME/Documentos/Projetos/tornesemprog/Desafio-DevOps-21-dias/base/terraform/example/providers/ssh/id_rsa ubuntu@${vm.public_dns} -o ServerAliveInterval=60"
  ]
}

output "informacoes_vms_privadas" {
  value = [
    for vm in aws_instance.vm_privadas :
    "ssh -i $HOME/Documentos/Projetos/tornesemprog/Desafio-DevOps-21-dias/base/terraform/example/providers/ssh/id_rsa ubuntu@${vm.private_ip} -o ServerAliveInterval=60 "
  ]
}
