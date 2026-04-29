#!/bin/bash

num1=$1
op=$2
num2=$3

case $op in

     +) 
	echo $((num1 + num2))
	;;
     -)
	echo $((num2 - num2))
	;;
     \*)
	echo $((num1 * num2))
	;;
     /) 
	echo $((num1 / num2))
	;;
     %)
        echo $((num1 / num2))
	;;
     *)
	echo "Operador inválido!"
esac
