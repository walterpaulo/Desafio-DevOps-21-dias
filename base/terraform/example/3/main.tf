
variable "arquivos" {
  default = {
    #keys/chave  = valor
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
  count                = length(keys(var.arquivos))
  filename             = keys(var.arquivos)[count.index]
  content              = var.arquivos[keys(var.arquivos)[count.index]]
}
