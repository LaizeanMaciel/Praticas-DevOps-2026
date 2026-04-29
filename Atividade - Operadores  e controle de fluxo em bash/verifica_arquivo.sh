#!/bin/bash

arquivo=$1

if [ -f "$arquivo" ]; then
    echo "O arquivo existe e é um arquivo regular"
elif [ -d "$arquivo" ]; then
    echo "É um diretório"
else
    echo "O arquivo não existe"
fi
