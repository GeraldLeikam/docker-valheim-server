#!/bin/bash
misfits_words=(Filename)


while [ true ]
do
  doprint=true
  read line
  for i in "${misfits_words[@]}"
  do
    if [[ $line =~ $i ]]
    then
      doprint=false
    fi
  done
  if [[ $doprint == true ]]
  if [[ -z $line ]] && [[ $doprint == true ]]
      then
        doprint=false
      fi
  then

    echo $line
  fi
done