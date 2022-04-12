resource "aws_subnet" "subnet_a1" {
    vpc_id = aws_vpc.vpc_desafio.id
    cidr_block = "10.0.64.0/18"
    availability_zone = "us-east-1a"

    tags = {
      "Name" = "subnet-a1"
    }
  
}