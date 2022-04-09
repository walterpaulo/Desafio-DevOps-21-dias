provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "vm" {
  count         = 2
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.nano"
  key_name      = aws_key_pair.chave_ssh_desafio.key_name
  vpc_security_group_ids = [
    aws_security_group.libera_ssh.id
  ]

  tags = {
    Name = "MinhaPrimeiraMaquina-${count.index}"
  }
}

resource "aws_key_pair" "chave_ssh_desafio" {
  key_name   = "chave_ssh_desafio_pub"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCrIb0rMjDNRoyDv4abWwSONjE7givbdXEegdiL0y+mndri1t3t0xgzogHHIguzxkS0UJEuX9GZZQJtqKniV/Z+hoNzhpDk7L5Op0wzqMi6aqKnRyDAxkQ+dqzbJX3kktjY3p5a9178MCuJEAwnmssvKt3J+eUOdBk0j9Z7RYf/E2y2HNc6IHEzfdFSWYphvamc1IlztBsdC7krCT5KWlE4HxsPRxSugv3HO6MnqkHgdThoiHEy7ZUXm23TcxYLDniOyIaSTZ7ZvWC4WF38z6JNGE72jyCcBbJp0loldQidsh0g9ft55qzypJrOdPUnsdhRMIukn5wL34XEoBmNY9SZjDOGw+SxtJxhQ3fTHK/Sido23o7K5qWK0n/C+UqHUCD4W2/saBamGlkozL2W1oaqk34rF2mEJweFsH903XCCbS6zDuZsGKGnVG4hZGD77IQmuYfdFLbBOu5elco9wzOh/Tn6b2cvtFtop7rBuqurLS9Go4+wXpFLP8lRm35z898= walter@jesus-salva"
}

