#!/bin/bash

echo "Digite o número da sorte"
read numero

mensagem_certa="Parabéns você acertou o número da sorte, passe no caixa e retire seu vale."

if [ $numero == "123456" ]; then
    echo $mensagem_certa
elif [ $numero == "123" ]; then
    echo $mensagem_certa
else
    echo "Infelizmente este não é o número da sorte."
fi