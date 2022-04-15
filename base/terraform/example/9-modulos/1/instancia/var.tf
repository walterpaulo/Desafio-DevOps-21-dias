variable "nome_vm" {
  type = string
  description = "variável de entrada para nosso modulo"
}

variable "tipo_instancia" {
  type = string
  description = "tipo de instancia exemplo t2.micro"
}

variable "ami_id" {
  type = string
  description = "id ami exemplo ami-232332"
}