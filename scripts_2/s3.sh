#!/bin/bash
# cuenta10ficheros.sh - Verifica si un directorio contiene más de 10 archivos

# Comprobar si el parámetro existe y es un directorio
if [ -z "$1" ] || [ ! -d "$1" ]; then
    echo "Error: Debes proporcionar una ruta válida a un directorio."
    exit 1
fi

# Contar archivos no directorios
cantidad_archivos=$(find "$1" -maxdepth 1 -type f | wc -l)

if (( cantidad_archivos > 10 )); then
    echo "El directorio $1 tiene más de 10 archivos."
else
    echo "El directorio $1 no tiene más de 10 archivos."
fi
