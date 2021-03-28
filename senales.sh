#!/bin/bash
escribe2()
{
	 echo -n "*" 
	 sleep .1
} 

escribe1()
{
        echo  "###" 
        sleep .1
}

escribe3()
{
	echo -e "\n@@@"
        sleep .1
}

escribe4()
{
        echo -n "+"
        sleep .1
}

escribe5()
{
        echo  -e "\n >>>"
        sleep .1
}
  echo $$ > /tmp/while.id
  a=1

 #Para convertirlo como variable de ambiente
 export a

 #trap = asocia un codigo o accion a una senal.
 trap "let a=1" SIGINT 
 trap "let a=2" SIGALRM
 trap "let a=3" SIGPIPE
 trap "let a=4" SIGUSR1
 trap "let a=5" SIGTERM 


while [ true ] ;
 do
    
    case $a in
      1)
        #echo "escribe1 " $a
	escribe1
      ;;
      2)
        #echo "escribe2 " $a
	escribe2
      ;;
      3)
        #echo "escribe3 " $a
        escribe3
      ;;
      4)
        #echo "escribe4 " $a
        escribe4
      ;;
      5)
        #echo "escribe5 " $a
        escribe5
      ;;
    esac
      
done
