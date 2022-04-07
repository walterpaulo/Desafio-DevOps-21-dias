#!/bin/bash

emails="teste1@hotmail.com; teste2@gmail.com; teste3@hotmail.com"
colecaoEmails=(${emails//;/})

#Pegar o primeiro email
echo ${colecaoEmails[0]}
echo "-----------------"

#Pegar o segundo email
echo ${colecaoEmails[1]}

echo "-----------------"
#Pegar o tercerio email
echo ${colecaoEmails[2]}
echo "-----------------"

#Mostrar apenas o primeiro email
echo $colecaoEmails
echo $colecaoEmails
echo $colecaoEmails