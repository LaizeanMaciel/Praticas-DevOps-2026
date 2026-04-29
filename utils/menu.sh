#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name:    menu.sh
# Description:    Menu interativo para execução dos scripts do projeto
# Author:         Laizean Maciel
# Usage:          ./menu.sh
# Version:        v1.0
# ------------------------------------------------------------ #
# History:
# v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="logs/menu.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

mostrar_menu(){
    echo "=============================="
    echo "   MENU DE SCRIPTS DEVOPS"
    echo "=============================="
    echo "1 - Informações do usuário"
    echo "2 - Calcular idade"
    echo "3 - Gerar senha"
    echo "4 - Ler valores"
    echo "5 - Informações do sistema"
    echo "0 - Sair"
    echo "=============================="
}

executar_opcao(){
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1)
            log "Executando user-info"
            ./utils/user-info.sh
            ;;
        2)
            log "Executando age-calculator"
            ./utils/age-calculator.sh
            ;;
        3)
            log "Executando password-generator"
            ./utils/password-generator.sh
            ;;
        4)
            log "Executando value-reader"
            ./utils/value-reader.sh
            ;;
        5)
            log "Executando system-info"
            ./utils/system-info.sh
            ;;
        0)
            log "Encerrando menu"
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida!"
            log "Opção inválida selecionada"
            ;;
    esac
}

# CODE
log "Menu iniciado"

while true; do
    mostrar_menu
    executar_opcao
    echo ""
done

# END
