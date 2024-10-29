#!/bin/bash
# sumarango.sh - Calcula la suma de los números dentro de un rango entre 0 y 9

read -p "Introduce el primer número (entre 0 y 9): " num1
read -p "Introduce el segundo número (entre 0 y 9): " num2

# Verificar que las entradas sean números válidos entre 0 y 9
if ! [[ "$num1" = [0-9] && "$num2" = [0-9] ]]; then
    echo "Error: Ambos valores deben ser números enteros entre 0 y 9."
    exit 1
fi

# Determinar el menor y el mayor
if ((num1 > num2)); then
    menor=$num2
    mayor=$num1
else
    menor=$num1
    mayor=$num2
fi

# Calcular la suma del rango
suma=0
for (( i=menor; i<=mayor; i++ )); do
    suma=$((suma + i))
done

echo "La suma del rango entre $menor y $mayor es: $suma"
