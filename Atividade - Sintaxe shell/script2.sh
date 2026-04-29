    #!/bin/bash
    read -p "Digite seu nome: " nome
    read -p "Digite seu ano de nascimento:" ano_nascimento

    ano_atual=$(date +%Y)
    idade=$((ano_atual - ano_nascimento))

    echo "Nome: $nome"
    echo "Ano de nascimento: $ano_nascimento"
