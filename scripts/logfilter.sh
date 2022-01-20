#!/bin/bash
misfits_words=(Filename)


while [ true ]
do
  doprint=true
  read line
  for i in "${misfits_words[@]}"
  do
    echo $i
    if [[ $line =~ $i ]]
    then
      echo true
    else
      echo false
    fi
  done
  echo $line
done