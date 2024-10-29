#!/bin/bash
# Script 2: Muestra el contenido de un archivo pasado como segundo parámetro y el código de salida

# Verificamos que el segundo parámetro existe
if [ -z "$2" ]; then
  echo "No se ha pasado la ruta al archivo como segundo parámetro."
  exit 1
fi

# Intentamos mostrar el contenido del archivo
cat "$2"
# Guardamos el código de salida de cat
exit_code=$?

echo "El código de salida del comando cat es: $exit_code"
exit $exit_code
