#!/bin/bash

while getopts s:o: flag
do
    case "${flag}" in
        s) string=${OPTARG};;
        o) output=${OPTARG};;
    esac
done
time=$(date -d "@$(date +%s)")
if [[ -n $output ]]
  then
    if [[ -n $string ]]
    then
      echo $time[0]
      echo "['${timw}'] -> [${string}]" | tee -a $output
    fi
fi