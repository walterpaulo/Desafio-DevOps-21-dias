output "public_dns" {
  value = aws_instance.vm[0].public_dns
}
