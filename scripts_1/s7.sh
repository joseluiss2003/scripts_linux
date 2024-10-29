#!/bin/bash
# Script 7: Verifica si una ruta es un archivo o un directorio

# Verificamos que se haya pasado un parámetro
if [ -z "$1" ]; then
  echo "Error: Se requiere la ruta de un archivo o directorio."
  exit 1
fi

# Verificamos si la ruta existe
if [ -e "$1" ]; then
  if [ -f "$1" ]; then
    echo "$1 es un archivo."
  elif [ -d "$1" ]; then
    echo "$1 es un directorio."
  else
    echo "$1 existe, pero no es ni un archivo ni un directorio común."
  fi
else
  echo "La ruta $1 no existe."
fi
