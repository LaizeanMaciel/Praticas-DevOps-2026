#!/bin/bash
read -p "Digite uma palavra base: " palavra
read -p "Digite um número: " numero

senha="${palavra}_${numero}"

echo "Senha gerada: $senha"

read -p "Deseja salvar em um arquivo? (s/n): " opcao

if [ "$opcao" = "s" ]; then
    echo "$senha" > senha.txt
    echo "Senha salva no arquivo senha.txt"
else
    echo"Senha não foi salva"
fi
