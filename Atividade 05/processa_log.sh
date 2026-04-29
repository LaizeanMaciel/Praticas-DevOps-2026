#!/bin/bash

echo"Arquivo LOG"

LOG="C:\Users\Laizean Maciel\Desktop\Atividade 05\log.txt"
TEMP="tmp\ips.txt"
RELATORIO="C:\Users\Laizean Maciel\Desktop\Atividade 05\relatorio_final.txt"

echo"IPs"

extrair_ips() {
	grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' "$LOG" > "$TEMP"
}

extrair_ips

# Junta npo relatório
cat "$TEMP" >> "$RELATORIO"

#Remove duplicados
sort -u "$RELATORIO" -o "$RELATORIO"

echo "Relatório atualizado!"
