resource "aws_db_instance" "rds" {
  engine         = "mysql"
  engine_version = "8.0"

  instance_class = "db.t2.micro"
  db_name        = "db_mysql_desafio"

  #   permissão de acesso
  username = "walter"
  password = var.senha_rds

  # alocar 5 gigas
  allocated_storage = 5

  publicly_accessible = true

  vpc_security_group_ids = [
    aws_security_group.libera_ssh.id
  ]

  #   periode backup, 0 = desabilitado
  backup_retention_period = 0
  # preferred_backup_window = "07:00-10:00"

  deletion_protection = false


  # ignorar snap
  skip_final_snapshot = true
  tags = {
    "Name" = "db-mysql"
  }

}