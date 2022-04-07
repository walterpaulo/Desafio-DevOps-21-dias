#!/bin/bash

tem_a_palavra_google="google"
conteudo_do_google=$(curl -s www.google.com)

# =~ operador de regex

if [[ "$conteudo_do_google" =~ "$tem_a_palavra_google" ]]
then
    echo "Achei:)"
else
    echo "Não achei! :("
fi