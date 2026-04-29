#!/bin/bash

analisa_log() {
    ARQUIVO="/var/log/syslog"
    SAIDA="$HOME/erros_$(date +%F).txt"

    grep "ERROR" "$ARQUIVO" > "$SAIDA"

    echo "Erros salvos em $SAIDA"
}

analisa_log
