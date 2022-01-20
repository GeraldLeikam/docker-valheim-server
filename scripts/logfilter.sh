#!/bin/bash
misfits_words=["Filename"]


while [ true ]
do
  read line
  for word in $misfits_words
  do
    echo word
  done
  echo $line
done