resource "aws_nat_gateway" "ng" {
  allocation_id = aws_eip.eip.id
  #   Pega o primeiro
  subnet_id = aws_subnet.subnets[0].id

  tags = {
    "Name" = "NAT-DESAFIO"
  }

  depends_on = [
    aws_subnet.subnets
  ]
}