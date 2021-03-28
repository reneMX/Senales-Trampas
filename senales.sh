#!/bin/bash
escribe1()
{
	 echo -n "*" 
	 sleep .1
} 

escribe2()
{
	 echo  "###" 
	sleep .3
}

escribe3()
{
	echo -n "-"
	sleep .3
}
  echo $$ > /tmp/while.id
  a=1

 #Para convertirlo como variable de ambiente
 export a

 #trap = asocia un codigo o accion a una senal.

 #trap "((a=a*(-1)))" SIGINT
 trap "let a*=2" SIGINT
 trap "let a*=3" SIGALRM

while [ true ]
 do
    case $a in
      1)
	escribe2
      ;;
      2)
	escribe1
      ;;
      3)
	escribe3
      ;;
esac

    #if [ $a -eq 1 ]; then
    #      echo "Mayor a 0 " $a
    #     escribe2
    #elif [ $a -eq 2 ]; then
    #     echo "diferente de 0 " $a
    #     escribe1
    #else
    #     echo "Ninguna Opccion"
    #fi
done


