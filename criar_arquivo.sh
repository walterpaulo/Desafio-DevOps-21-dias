#!/bin/bash

echo "cria um arquivo"
sleep 1
touch lab_shell/um-arquivo.txt


# a saída do comando echo para (>) o arquivo arquivo-com-conteudo.txt
echo "a saída do comando echo para (>) o arquivo arquivo-com-conteudo.txt"
sleep 1
echo "Um dado que vai dentro do arquivo" > lab_shell/arquivo-com-conteudo.txt

echo "Adicionando nova linha no final do arquivo"
sleep 1
echo "Uma nova linha no arquivo" >> lab_shell/arquivo-com-conteudo.txt

# echo "adicionando contéudo em lote"
# sleep 1
# cat <<EOF > lab_shell/arquivo-com-conteudo.txt
#     uma aula de shell script
#     para explicar os alunos/alunas como criar arquivos
#     em várias linhas!!
# EOF

echo "adicionando novas linhas no final do arquivo. (>>)"
sleep 1
cat <<EOF >> lab_shell/arquivo-com-conteudo.txt
    Acrescentando novas linhas
    no arquivo existente que iremos fazer os dados
    para mais uma aula.
EOF