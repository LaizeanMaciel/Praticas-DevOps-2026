
#!/bin/bash

num1=$1
num2=$2

if [ "$num1" -gt "$num2" ]; then
   echo "O primeiro número é maior"
elif [ "$num1" -lt "$num2" ]; then
   echo "O segundo número é menor"
else
   echo "Os números são iguais"
fi


