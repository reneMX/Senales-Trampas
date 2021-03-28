#!/bin/bash
 
  if [ "$1" = "" ];then
         echo "ERROR!!debes de ingresar un valor de senal por ejemplo: "
         echo "2 , 14, 13, 15"
         exit
  fi
  proceso=`cat /tmp/while.id`
  echo $proceso

sleep 3
case $1 in
       2)
        kill -2 $proceso
	sleep 10
	kill -9 $proceso
       ;;
       14)
         kill -14 $proceso
	sleep 10
	kill -9 $proceso
       ;;
       13)
        kill -13 $proceso
	sleep 10
	kill -9 $proceso
       ;;
       15)
	kill -15 $proceso
	sleep 10
	kill -9 $proceso
       ;;
     esac
