#!/bin/bash
misfits_words=["Filename"]


while [ true ]
do
  doprint=true
  read line
  for word in $misfits_words
  do
    if [[ $line =~ $word ]]; then
       echo "It's there!"
    fi
  done
  echo $line
done