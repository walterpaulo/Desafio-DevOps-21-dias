variable "sigla" {
  type        = string
  description = "Digite a sigla de um estado brasileiro: (GO-SP...DF)"
}

output "Estados" {
  value = "${var.Estados[var.sigla]}/${var.sigla}"
}
