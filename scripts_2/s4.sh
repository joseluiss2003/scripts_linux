#!/bin/bash
# decada_edad.sh - Calcula la década de nacimiento en función de la edad

# Obtener el año actual
año_actual=$(date +%Y)

read -p "Introduce tu edad (entre 15 y 60 años): " edad

# Verificamos que la edad esté en el rango válido
if ! [[ "$edad" =~ ^[0-9]+$ ]] || ((edad < 15 || edad > 60)); then
    echo "Error: Debes introducir una edad válida entre 15 y 60."
    exit 1
fi

# Calcular el año de nacimiento
año_nacimiento=$(( año_actual - edad ))
decada=$(( (año_nacimiento / 10) * 10 ))

echo "Si naciste en $año_nacimiento, naciste en la década de $decada."
