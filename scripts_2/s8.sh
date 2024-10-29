#!/bin/bash
# usuarios.sh - Muestra información de un usuario del sistema

while true; do
    read -p "Introduce el nombre de usuario: " usuario

    # Verificar si el usuario existe
    if id "$usuario" &>/dev/null; then
        echo "Información del usuario $usuario:"
        echo "UID: $(id -u $usuario)"
        echo "GID: $(id -g $usuario)"
        echo "Directorio de trabajo: $(eval echo ~$usuario)"
    else
        echo "El usuario $usuario no existe." >&2
        echo "$(date) - Usuario no encontrado: $usuario" >> errores.log
    fi

    # Preguntar si se desea continuar o salir
    read -p "¿Deseas buscar otro usuario? (s/n): " respuesta
    case "$respuesta" in
        [Nn]) 
            echo "Saliendo del programa"
            break
            ;;
        [Ss])
            echo "Busca otro usuario"
            ;;
        *)
            echo "Debes introducir 's' o 'n'."
            ;;
    esac
done
