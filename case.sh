#!/bin/bash
  echo -n "Escribe un numero: "
  read x
  case $x in
     1)
        echo "uno"
     ;;
     2)
        echo "dos"
     ;;
     *)
        echo "no sé qué numero es"
     ;;
  esac
