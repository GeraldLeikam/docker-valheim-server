#!/bin/bash
misfits_words=(Filename furz)


while [ true ]
do
  doprint=true
  read line
  for i in "${misfits_words[@]}"; do echo "$i"; done
  echo $line
done