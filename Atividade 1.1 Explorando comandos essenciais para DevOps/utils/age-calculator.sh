#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name:    age-calculator.sh
# Description:    Calcula a idade do usuário com base no ano de nascimento
# Author:         Laizean Maciel
# Usage:          ./age-calculator.sh
# Version:        v1.0
# ------------------------------------------------------------ #
# History:
# v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="logs/age-calculator.log"
ANO_ATUAL=$(date +%Y)

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

coletar_dados(){
    read -p "Digite seu nome: " nome
    read -p "Digite seu ano de nascimento: " ano_nascimento
}

calcular_idade(){
    idade=$((ANO_ATUAL - ano_nascimento))
}

exibir_resultado(){
    echo "Nome: $nome"
    echo "Ano de nascimento: $ano_nascimento"
    echo "Idade: $idade anos"
}

# CODE
log "Script iniciado"

coletar_dados

if calcular_idade; then
    log "Idade calculada com sucesso"
else
    log "Erro ao calcular idade"
    exit 1
fi

exibir_resultado
log "Script finalizado"

# END
