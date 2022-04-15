provider "aws" {
  region = "us-east-1"
}
#reaproveitamento de códico
module "vm" {
  source         = "./instancia"
  nome_vm        = "vm-criada-com-modulo"
  tipo_instancia = "t2.micro"
  ami_id         = data.aws_ami.ubuntu.id
}

module "vm2" {
  source         = "./instancia"
  nome_vm        = "vm-criada-com-modulo"
  tipo_instancia = "t2.micro"
  ami_id         = data.aws_ami.ubuntu.id
}

output "dns" {
  value = module.vm.public_dns
}
output "dns2" {
  value = module.vm2.public_dns
}