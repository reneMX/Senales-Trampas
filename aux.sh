
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

echo $$ > /tmp/while.id
a=1

#Para convertirlo como variable de ambiente
export a

#trap = asocia un codigo o accion a una senal.

#trap "((a=a*(-1)))" SIGINT
trap "let a*=2" SIGINT
#trap "let a*=-1" SIGALRM
while [ true ]
do
   if [ $a -eq 1 ]; then
	 echo "Mayor a 0 " $a
	escribe2
   elif [ $a -eq 2 ]; then
	echo "diferente de 0 " $a
	escribe1
   else
	echo "Ninguna Opccion"
fi
done

