#!/bin/bash

# Função validar e-mail
valida_email() {
    if [[ $1 =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
        echo "Válido"
    else
        echo "Inválido - E-mail incorreto"
    fi
}

# Função validar CPF (formato simples)
valida_cpf() {
    if [[ $1 =~ ^[0-9]{11}$ ]]; then
        echo "Válido"
    else
        echo "Inválido - CPF deve ter 11 números"
    fi
}

# Função validar data (YYYY-MM-DD)
valida_data() {
    if [[ $1 =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
        echo "Válido"
    else
        echo "Inválido - Formato correto: YYYY-MM-DD"
    fi
}

# Menu
echo "Escolha uma opção:"
echo "1 - Validar Email"
echo "2 - Validar CPF"
echo "3 - Validar Data"
read opcao

case $opcao in
    1)
        read -p "Digite o email: " dado
        valida_email "$dado"
        ;;
    2)
        read -p "Digite o CPF: " dado
        valida_cpf "$dado"
        ;;
    3)
        read -p "Digite a data: " dado
        valida_data "$dado"
        ;;
    *)
        echo "Opção inválida"
        ;;
esac
