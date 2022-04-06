#!/bin/bash

echo "Digite uma frase"
read frase

echo "Digite algo que esteja nesta frase:"
read frase

# retorno=`echo $frase | grep rato` # para fazer scan de um regex
retorno=`echo $frase | grep $algo` # trago a frase inteira se achar string

if [ -z "$retorno" ]; then # -z, se o retorno vem null
    echo "Não encontrei!"
else
    echo "Encontrado!"
fi