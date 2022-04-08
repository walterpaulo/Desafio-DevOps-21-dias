
variable "arquivos" {
  default = {
    #keys/chave  = value/valor
    "joao_paulo" = "Olá joão",
    "joao_ghissadi.txt" = "Olá joao ghissardi",
    "walter.txt" = "Olá walter",
    "woto" = "Olá woto",
    "ana.txt" = <<EOF
    Olá ana, você terá mais conteudo
    ainda separa..
    EOF
  }
  
}

# 

resource local_file "multifles" {
  for_each         = var.arquivos
  filename             = each.key
  content              = each.value
}
