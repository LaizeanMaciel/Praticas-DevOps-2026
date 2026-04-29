#!/bin/bash

while true; do
  echo "=============================="
  echo "   MENU DE OPERAÇÕES DEVOPS"
  echo "=============================="
  echo "1 - Renomear arquivos"
  echo "2 - Compactar arquivos"
  echo "3 - Descompactar arquivos"
  echo "4 - Alterar permissões"
  echo "5 - Sair"
  echo "=============================="

  read -p "Escolha uma opção: " opcao

  case $opcao in

    1)
      echo "--- Renomear Arquivo ---"
      read -p "Nome do arquivo atual: " nome
      if [ -f "$nome" ]; then
        read -p "Novo nome: " novo
        mv "$nome" "$novo"
        echo "Arquivo renomeado com sucesso!"
      else
        echo "Erro: arquivo não encontrado!"
      fi
      ;;

    2)
      echo "--- Compactar Arquivo ---"
      read -p "Nome do arquivo: " nome
      if [ -f "$nome" ]; then
        gzip "$nome"
        echo "Arquivo compactado com sucesso!"
      else
        echo "Erro: arquivo não encontrado!"
      fi
      ;;

    3)
      echo "--- Descompactar Arquivo ---"
      read -p "Nome do arquivo (.gz): " nome
      if [ -f "$nome" ]; then
        gunzip "$nome"
        echo "Arquivo descompactado com sucesso!"
      else
        echo "Erro: arquivo não encontrado!"
      fi
      ;;

    4)
      echo "--- Alterar Permissões ---"
      read -p "Nome do arquivo: " nome
      if [ -f "$nome" ]; then
        read -p "Permissão (ex: 777): " perm
        chmod "$perm" "$nome"
        echo "Permissão alterada com sucesso!"
      else
        echo "Erro: arquivo não encontrado!"
      fi
      ;;

    5)
      echo "Saindo..."
      break
      ;;

    *)
      echo "Opção inválida! Tente novamente."
      ;;
      
  esac

  echo ""
done
