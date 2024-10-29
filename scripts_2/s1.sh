#!/bin/bash
# multiplo10.sh - Verifica si un número es múltiplo de 10

read -p "Introduce un número: " numero

# Verificamos que la entrada sea un número
if ! [[ "$numero" =~ ^[0-9]+$ ]]; then
    echo "Error: Debes introducir un número entero válido."
    exit 1
fi

# Comprobamos si es múltiplo de 10
if (( numero % 10 == 0 )); then
    echo "El número $numero es múltiplo de 10."
else
    echo "El número $numero no es múltiplo de 10."
fi
