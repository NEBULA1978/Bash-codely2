#!/bin/bash

# Comprobamos si la hora actual en segundos desde el epoch es par o impar
if (($(date +%s) % 2)); then
    # Si es impar, imprimimos "is odd" y salimos con un código de salida 0
    echo is odd
    exit 0
else
    # Si es par, imprimimos "is even" en la salida de error estándar y salimos con un código de salida 1
    echo >&2 "is even"
    exit 1
fi
# Resultado por consola:
# <◂> ./time_is_odd_with_error.sh
# is odd
# <◂> ./time_is_odd_with_error.sh
# is even
# <◂> ./time_is_odd_with_error.sh
# is even
# <◂> ./time_is_odd_with_error.sh
# is odd

# <◂> En este script, también estamos utilizando la redirección de salida de error estándar (>&2) para imprimir el mensaje "is even" en la salida de error estándar en lugar de la salida estándar. Esto se hace para separar claramente la salida "normal" del script de cualquier mensaje de error que pueda generar.