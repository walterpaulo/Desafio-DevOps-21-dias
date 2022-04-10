variable "cliente" {
  type = map(string)
  default = {
    "nome"     = "walter",
    "telefone" = "62 99999-99999",
    "cpf"      = "111.111.111-11"
  }
}

output "dados_do_cliente" {
  value = [
    for key, value in var.cliente :
    "${key}: ${value}"
  ]
}