#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name:    value-reader.sh
# Description:    Lê dois valores informados pelo usuário e exibe na tela
# Author:         Laizean Maciel
# Usage:          ./value-reader.sh
# Version:        v1.0
# ------------------------------------------------------------ #
# History:
# v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="logs/value-reader.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

coletar_valores(){
    read -p "Digite o primeiro valor: " valor1
    read -p "Digite o segundo valor: " valor2
}

exibir_valores(){
    echo "Primeiro valor: $valor1"
    echo "Segundo valor: $valor2"
}

# CODE
log "Script iniciado"

coletar_valores

if exibir_valores; then
    log "Valores exibidos com sucesso"
else
    log "Erro ao exibir valores"
    exit 1
fi

log "Script finalizado"

# END
