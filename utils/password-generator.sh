#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name:    password-generator.sh
# Description:    Gera uma senha simples e opcionalmente salva em arquivo
# Author:         Laizean Maciel
# Usage:          ./password-generator.sh
# Version:        v1.0
# ------------------------------------------------------------ #
# History:
# v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="logs/password-generator.log"
OUTPUT_FILE="utils/senha.txt"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

gerar_senha(){
    read -p "Digite uma palavra base: " palavra
    read -p "Digite um número: " numero
    senha="${palavra}_${numero}"
}

exibir_senha(){
    echo "Senha gerada: $senha"
}

salvar_senha(){
    read -p "Deseja salvar em um arquivo? (s/n): " opcao

    if [ "$opcao" = "s" ]; then
        echo "$senha" > "$OUTPUT_FILE"
        echo "Senha salva em $OUTPUT_FILE"
        log "Senha salva em arquivo"
    else
        echo "Senha não foi salva"
        log "Usuário optou por não salvar senha"
    fi
}

# CODE
log "Script iniciado"

gerar_senha
exibir_senha
salvar_senha

log "Script finalizado"

# END
