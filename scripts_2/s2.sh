#!/bin/bash
# altura_mayor.sh - Encuentra la mayor altura en metros de tres personas

alturas=()
for i in {1..3}; do
    read -p "Introduce la altura de la persona $i en centímetros: " altura
    if ! [[ "$altura" =~ ^[0-9]+$ ]]; then
        echo "Error: Debes introducir un número entero válido."
        exit 1
    fi
    alturas+=($altura)
done

# Encontramos la mayor altura y la convertimos a metros
mayor=${alturas[0]}
for altura in "${alturas[@]}"; do
    ((altura > mayor)) && mayor=$altura
done

echo "La mayor altura es $(bc <<< "scale=2; $mayor/100") metros."
