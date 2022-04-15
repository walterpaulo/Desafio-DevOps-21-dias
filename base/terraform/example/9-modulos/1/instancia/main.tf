resource "aws_instance" "vm" {
  ami = var.ami_id
  instance_type = var.tipo_instancia

  tags = {
    "Name" = var.nome_vm
  }
}

