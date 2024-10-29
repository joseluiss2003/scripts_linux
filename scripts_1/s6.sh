#!/bin/bash
# Script 6: Crear un directorio y copiar un archivo en él (con verificación de parámetros)

# Verificamos si se han pasado dos parámetros
if [ "$#" -lt 2 ]; then
  echo "Error: Se requieren dos parámetros: la ruta del directorio y la ruta del archivo."
  exit 1
fi

# Creamos el directorio
mkdir -p "$1"

# Copiamos el archivo dentro del directorio
cp "$2" "$1"
echo "Archivo copiado en el directorio $1"
