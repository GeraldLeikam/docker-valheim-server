#!/bin/bash
misfits_words=["Filename" "furz"]


while [ true ]
do
  doprint=true
  read line
  for word in $misfits_words
  do
    if [[ $line =~ $word ]]
    then
       echo "It's there!"
    else
      echo "It's not there"
    fi

  done
  echo $line
done