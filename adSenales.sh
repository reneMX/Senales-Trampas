#!/bin/bash


proceso=`cat /tmp/while.id`
echo $proceso

#kill -9 $proceso
sleep 5

kill -14 $proceso
sleep 5

kill -2 $proceso
sleep 5

kill -9 $proceso
