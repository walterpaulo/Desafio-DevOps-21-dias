
resource "aws_security_group" "libera_ssh" {
  name        = "libera_ssh_desafio_devops"
  description = "Libera a porta 22 para as maquinas criadas no desafio devops"
  # 1 passo: ligada vpc nesse grupo de securação
  vpc_id = aws_vpc.vpc_desafio.id

  ingress = [
    {
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      description      = "Liberacao geral de fora para dentro"
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    }
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      description      = "Liberacao geral na parte interna"
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    }
  ]

  tags = {
    Name = "libera_ssh_desafio"
  }
}

