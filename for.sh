for i in {1..10}
do
  if [[ "$i" == '4' ]]
  then
    continue

  elif [ $i -gt 5 ]
  then
    break
  fi

  echo "$i"
done
