#!/bin/bash
# diadelmes.sh - Muestra el número de días del mes actual

mes=$(date +%B)
dias=$(date +%d -d "$(date +%Y-%m-1) +1 month -1 day" 2>/dev/null || echo 28)

echo "Estamos en $mes, un mes con $dias días."
