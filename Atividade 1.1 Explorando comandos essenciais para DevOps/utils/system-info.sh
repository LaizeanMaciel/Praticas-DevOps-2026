#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name:    system-info.sh
# Description:    Exibe informações básicas do sistema e usuário
# Author:         Laizean Maciel
# Usage:          ./system-info.sh
# Version:        v1.0
# ------------------------------------------------------------ #
# History:
# v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="logs/system-info.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

exibir_info(){
    echo "Usuário atual: $(whoami)"
    echo "Diretório home: $HOME"
    echo "Diretório atual: $(pwd)"
}

# CODE
log "Script iniciado"

if exibir_info; then
    log "Informações exibidas com sucesso"
else
    log "Erro ao exibir informações"
    exit 1
fi

log "Script finalizado"

# END
