#!/bin/bash

echo "==========================================="
echo "Explorando comandos essenciais para DevOps"
echo "==========================================="

# ===========================================
# GREP
# ===========================================
echo -e "\n[grep] - Busca padrões em arquivos"
echo "Exemplo:"
echo "grep 'root' /etc/passwd"
grep "root" /etc/passwd

echo "Help:"
grep --help | head -n 5

# ===========================================
# TOUCH
# ===========================================
echo -e "\n[touch] - Cria arquivos vazios"
echo "Exemplo:"
touch arquivo_exemplo.txt
ls -l arquivo_exemplo.txt

echo "Help:"
touch --help | head -n 5

# ===========================================
# CURL
# ===========================================
echo -e "\n[curl] - Faz requisições HTTP"
echo "Exemplo:"
curl -I https://www.google.com

echo "Help:"
curl --help | head -n 5

# ===========================================
# CAT
# ===========================================
echo -e "\n[cat] - Exibe conteúdo de arquivos"
echo "Exemplo:"
echo "Teste de conteúdo" > arquivo_exemplo.txt
cat arquivo_exemplo.txt

echo "Help:"
cat --help | head -n 5

# ===========================================
# GZIP
# ===========================================
echo -e "\n[gzip] - Compacta arquivos"
echo "Exemplo:"
gzip arquivo_exemplo.txt
ls

echo "Help:"
gzip --help | head -n 5

# ===========================================
# CHMOD
# ===========================================
echo -e "\n[chmod] - Altera permissões de arquivos"
echo "Exemplo:"
touch permissao.txt
chmod 777 permissao.txt
ls -l permissao.txt

echo "Help:"
chmod --help | head -n 5

# ===========================================
# DATE
# ===========================================
echo -e "\n[date] - Exibe data e hora"
echo "Exemplo:"
date

echo "Help:"
date --help | head -n 5

# ===========================================
# PWD
# ===========================================
echo -e "\n[pwd] - Mostra diretório atual"
echo "Exemplo:"
pwd

echo "Help:"
pwd --help

# ===========================================
# PGREP
# ===========================================
echo -e "\n[pgrep] - Busca processos pelo nome"
echo "Exemplo:"
pgrep bash

echo "Help:"
pgrep --help | head -n 5

# ===========================================
# PS
# ===========================================
echo -e "\n[ps] - Lista processos ativos"
echo "Exemplo:"
ps aux | head -n 5

echo "Help:"
ps --help

# ===========================================
# DF
# ===========================================
echo -e "\n[df] - Mostra uso de disco"
echo "Exemplo:"
df -h

echo "Help:"
df --help | head -n 5

# ===========================================
# DU
# ===========================================
echo -e "\n[du] - Mostra tamanho de diretórios"
echo "Exemplo:"
du -h | head -n 5

echo "Help:"
du --help | head -n 5

echo -e "\nFim do script!"

