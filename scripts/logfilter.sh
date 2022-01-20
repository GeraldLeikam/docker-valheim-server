#!/bin/bash
misfits_words=(Filename)

OUTPUT_FILE=/root/valheim-server.log

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
  if [[ -z $line ]] && [[ $doprint == true ]]
  then
    doprint=false
  fi
  if [[ $doprint == true ]]
  then
    #echo $line
    /bin/bash /run/logwriter.sh -s "${line}" -o $OUTPUT_FILE
  fi
done