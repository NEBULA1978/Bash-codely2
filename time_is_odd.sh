#!/bin/bash

# Comprobamos si la hora actual en segundos desde el epoch es par o impar
if (( $(date +%s) % 2 )); then
  # Si es impar, imprimimos "es raro" y salimos con un código de salida 0
  echo "es raro"
  exit 0
else
  # Si es par, imprimimos "es parejo" y salimos con un código de salida 1
  echo "es parejo"
  exit 1
fi

# Resultado por consola:
# <◂> ./time_is_odd.sh 
# es raro
# <◂> ./time_is_odd.sh 
# es raro
# <◂> ./time_is_odd.sh 
# es raro
# <◂> ./time_is_odd.sh 
# es parejo
# <◂> ./time_is_odd.sh 
# es raro
# <◂> ./time_is_odd.sh 
# es parejo
# <◂> ./time_is_odd.sh 
# es raro
# <◂> ./time_is_odd.sh 
# es parejo
# <◂> ./time_is_odd.sh 
# es raro
