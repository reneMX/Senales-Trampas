#!/bin/bash

#if [ "$1" = "" ];then
#	echo "ERROR!!debes de ingresar un valor de senal por ejemplo: "
#	echo "-2 , -14, -13, -15"
#	exit
#fi
proceso=`cat /tmp/while.id`
echo $proceso

#kill -9 $proceso
sleep 3

kill -2 $proceso
sleep 5

kill -14 $proceso
sleep 8

kill -13 $proceso
sleep 5

kill -10 $proceso
sleep 8

kill -15 $proceso
sleep 5

kill -9 $proceso
