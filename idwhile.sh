#!/bin/bash
proceso=`cat /tmp/while.id`
echo $proceso

#kill -9 $proceso
kill -14 $proceso
