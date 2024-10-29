#!/bin/bash
# horoscopochino.sh - Determina el signo del horóscopo chino

read -p "Introduce tu año de nacimiento (4 cifras): " año

# Verificación de año válido
if ! [[ "$año" =~ ^[0-9]{4}$ ]]; then
    echo "Error: Debes introducir un año válido de 4 cifras."
    exit 1
fi

# Calcular el signo del horóscopo chino
signo=$(( año % 12 ))
animales=("La rata" "El buey" "El tigre" "El conejo" "El dragón" "La serpiente" "El caballo" "La cabra" "El mono" "El gallo" "El perro" "El cerdo")

echo "Tu signo en el horóscopo chino es: ${animales[signo]}"
