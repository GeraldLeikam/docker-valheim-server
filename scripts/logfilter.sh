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
      doprint=false
    fi
  done
  if [[ $doprint == true ]]
  then
    echo $line
  fi
done