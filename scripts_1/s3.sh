#!/bin/bash
# Script 3: Crea un directorio y copia un archivo en él

# Verificamos que ambos parámetros existen
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Se requieren dos parámetros: la ruta del directorio y la ruta del archivo."
  exit 1
fi

# Creamos el directorio
mkdir -p "$1"

# Copiamos el archivo dentro del directorio
cp "$2" "$1"
echo "Archivo copiado en el directorio $1"
