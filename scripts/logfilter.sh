#!/bin/bash
misfits_words=(Filename furz)


while [ true ]
do
  doprint=true
  read line
  for word in $misfits_words
  do
    echo $word


  done
  echo $line
done