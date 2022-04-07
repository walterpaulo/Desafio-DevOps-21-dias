#!/bin/bash

emails="teste1@hotmail.com; teste2@gmail.com; teste3@hotmail.com"

#Pegar o primeiro email
capturaItem=$(echo $emails| cut -d';' -f 1)

#Pegar o primeiro email
capturaItem2=$(echo $emails| cut -d';' -f 2)

#Pegar o primeiro email
capturaItem3=$(echo $emails| cut -d';' -f 3)

#Retorna na tela:
echo $capturaItem
echo $capturaItem2
echo $capturaItem3

