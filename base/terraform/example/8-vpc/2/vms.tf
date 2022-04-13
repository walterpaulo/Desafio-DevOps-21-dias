resource "aws_instance" "vm" {
  count         = length(var.nomes)
  ami           = data.aws_ami.ubuntu.id #"image "ami-04505e74c0741db8d" da região "us-east-1"
  instance_type = var.instance_type
  key_name      = aws_key_pair.chave_ssh_desafio.key_name
  subnet_id     = aws_subnet.subnets[index(keys(var.subnets), var.nomes[count.index])]
  vpc_security_group_ids = [
    aws_security_group.libera_ssh.id
  ]


  tags = {
    Name = var.nomes[count.index].nome
  }
}

