resource "aws_vpc" "vpc_desafio" {
  #   Cria rede
  
  #   cria bloco de ip/v4
  cidr_block = "10.0.0.0/16"
  #   habilitar dns
  enable_dns_hostnames = true

  #   nome da rede - vpc
  #   se for na aws: VPC > Your > VPCs > Create VPC 
  tags = {
    "Name" = "terraform-vpc-desafio"
  }
}