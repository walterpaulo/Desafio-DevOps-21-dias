# associar subnet na router
resource "aws_route_table_association" "rts" {
  count          = length(keys(var.subnets))
  subnet_id      = aws_subnet.subnets[count.index].id
  route_table_id = aws_route_table.rt_desafio.id
}

# rede privada
resource "aws_route_table_association" "rts_privadas" {
  count          = length(keys(var.subnets_privadas))
  subnet_id      = aws_subnet.subnets_privadas[count.index].id
  route_table_id = aws_route_table.rt_desafio_privada.id
}

