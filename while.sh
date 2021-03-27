
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
#trap "let a*=-1" SIGINT
trap "let a*=-1" SIGALRM
while [ true ]
do
   if [ $a -gt 0 ]
   then
   escribe2
else
   escribe1
fi
done
