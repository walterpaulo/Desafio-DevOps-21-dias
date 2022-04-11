output "informacoes_vms" {
  value = [
    for obj in var.nomes :
    "ssh -i $HOME/Documentos/Projetos/tornesemprog/Desafio-DevOps-21-dias/base/terraform/example/providers/ssh/ ubuntu@ "
  ]
}