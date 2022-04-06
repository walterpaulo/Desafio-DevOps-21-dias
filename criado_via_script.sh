#!/bin/bash

# 1) Crie um script para fazer as seguintes operações no S.O.
# Passos:
#     1 - criar uma arquivo .sh 
#     2 - colocar em seu contéudo do arquivo sh os comandos abaixo:
#         2.1 - mkdir criado_via_script
#         2.2 - touch arquivo-gerado.txt
#         2.3 - echo "um teste no arquivo com dado" > arquivo_com_dado.txt
#         2.4 - cat <<EOF > mais_um_arquivo.txt
#                 Estamos aprendendo a manimular
#                 arquivos na aula de devops
#                 EOF
#         2.5 - echo "-----------------------"
#         2.6 - cat arquivo_com_dado.txt
#         2.7 - echo "-----------------------"
#         2.8 - cat mais_um_arquivo.txt
#     3 - dar permissão a este arquivo para execução
#     4 - rodar o arquivo.

# OBS: fazer tudo isso em somente um script 

echo "Início do exercício"
sleep 1

echo "criando diretório criado_via_script"
sleep 1
mkdir criado_via_script
echo "done!"

echo "criando arquivo-gerado.txt"
sleep 1
touch criado_via_script/arquivo-gerado.txt
echo "done!"

echo "adicionando linha: um teste no q"
echo "um teste no arquivo com dado" > criado_via_script/arquivo_com_dado.txt

cat <<EOF > criado_via_script/mais_um_arquivo.txt
                Estamos aprendendo a manimular
                arquivos na aula de devops
EOF

echo "-----------------------"
cat criado_via_script/arquivo_com_dado.txt
echo "-----------------------"
cat criado_via_script/mais_um_arquivo.txt