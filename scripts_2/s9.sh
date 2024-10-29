#!/bin/bash
# copia_scripts.sh - Empaqueta los archivos .sh en un directorio

# Verificación de entrada
if [ -z "$1" ] || [ ! -d "$1" ]; then
    echo "Error: Debes proporcionar una ruta válida a un directorio."
    exit 1
fi

# Crear archivo tar con formato requerido
fecha=$(date +%d%m%Y)
tar -cvf "copia_scripts_$fecha.tar" "$1"/*.sh
echo "Fichero tar creado correctamente: copia_scripts_$fecha.tar"
