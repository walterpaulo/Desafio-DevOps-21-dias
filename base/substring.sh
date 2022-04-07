#!/bin/bash

#Pegar uma coleção a partir de um ponto, posição 0 a 3

# Exemplo no JavaScrit
# "alunos_devops".substring(0,3)
# retorna: "alu"

# Exemplo no Shell script

filinename="Um teste com os alunos"

captura=${filinename:0:4}

echo $captura
# retorna: Um t 


