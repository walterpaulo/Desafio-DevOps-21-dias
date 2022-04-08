
resource local_file "criando_arquivos" {
  count                = 5
  filename             = "arquivo_${count.index}_tf.txt"
  content              = "Estamos aprendendo o terraform utilizando a linguagem HCL alterando"
}


# O comando count cria 5 associado com filename cria 5 arquivos
