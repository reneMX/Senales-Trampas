#!/bin/bash
if [ $# -eq 0 ] 
then	
  echo "ejecutar: $0 n"

elif [[ $1 =~ [^0-9\-] ]]
then
     echo "El parametro debe ser numerico"

elif [ $1 -lt 0 ] 
then
     echo "negativo"

elif [ $1 -gt 0 ] 
then
     echo "positivo"
else
     echo "$1 cero"
fi


# -le  lower and equal
# -ge  greater and equal 
# 
# comparacion entre cadenas
# ==  
# != 
