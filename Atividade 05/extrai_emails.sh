#!/bin/bash

extrai_emails() {
    if [ -z "$1" ]; then
        echo "Uso: extrai_emails arquivo"
        return 1
    fi

    grep -E '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+' "$1"
}
