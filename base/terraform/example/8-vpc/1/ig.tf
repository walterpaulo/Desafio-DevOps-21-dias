resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.vpc_desafio.id

  tags = {
      "Name" = "gw-desafio-devops"
  }
}