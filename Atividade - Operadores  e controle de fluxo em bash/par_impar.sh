#!/bin/bash

num=$1

if [ $((num % 2)) -eq 0 ]; then
     echo "O número é par"
else
     echo "O número é ímpar"
fi
