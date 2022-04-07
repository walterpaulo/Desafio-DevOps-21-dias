#!/bin/bash

contador=0

echo "=== Ultizando o while ==="
while [ $contador -lt 5 ]; do
    echo "número: $contador"
    let contador=contador+1
done

echo "=== Ultizando o for ==="
for contador in 1 3 4 6 7 8 9; do
    echo "número: $contador"
done

echo "=== Ultizando o for + ls ==="
for arquivo in $(ls); do
    echo "O arquivo é: $arquivo"
done

