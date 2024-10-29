#!/bin/bash
# Script 4: Verifica y muestra los parámetros recibidos

if [ $# -eq 0 ]; then
  echo "No has introducido ningún parámetro"
  exit 1
else
  echo "Número de parámetros recibidos: $#"
  echo "Parámetros: $@"
  exit 0
fi
