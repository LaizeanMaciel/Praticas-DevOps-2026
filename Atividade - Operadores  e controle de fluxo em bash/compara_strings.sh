#!/bin/bash

str1=$1
str2=$2

if [ "$str1" = "$str2" ]; then
    echo "As strings são iguais"
else
    echo "As strings são diferentes"
fi
