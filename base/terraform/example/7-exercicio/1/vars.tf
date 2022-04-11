variable "nomes" {
  type = map(any)
  default = {

    "vm1" : "Primeira",
    "vm2" : "Segunda",
    "vm3" : "terceira",
    "vm4" : "quarta",
  }
}

variable "instance_type" {
  type        = string
  description = "O tipo de VM para criação: Ex: (t2.micro)"
}