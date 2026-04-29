#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name:    user-info.sh
# Description:    Coleta informações do usuário e exibe dados do sistema
# Author:         Laizean Maciel
# Usage:          ./user-info.sh
# Version:        v1.0
# ------------------------------------------------------------ #
# History:
# v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/user-info.log"
DATA_HORA=$(date)
HOME_USUARIO=$HOME

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

coletar_dados(){
    read -p "Digite o seu nome: " nome
    read -p "Digite a disciplina que está cursando: " disciplina
    read -p "Qual seu semestre atual: " semestre
}

exibir_dados(){
    echo "Olá, $nome! Bem vindo à disciplina $disciplina no $semestre semestre."
    echo "Data e hora atual: $DATA_HORA"
    echo "Seu diretório home é: $HOME_USUARIO"
}

# CODE
echo "Bem vindo ao sistema!"
log "Script iniciado"

coletar_dados

if exibir_dados; then
    log "Dados exibidos com sucesso"
else
    log "Erro ao exibir dados"
    exit 1
fi

log "Script finalizado"

# END

