#!/bin/bash

str1=$1
str2=$2

if [[ "$str1" < "$str2" ]]; then
   echo "$str1 vem primeiro que $str2"
elif [[ "$str1" > "$str2" ]]; then
   echo "$str2 vem antes de $str1"
else
   echo "As strings são iguais"
fi
