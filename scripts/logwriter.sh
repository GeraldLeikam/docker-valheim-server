#!/bin/bash

while getopts s:o: flag
do
    case "${flag}" in
        s) string=${OPTARG};;
        o) output=${OPTARG};;
    esac
done
if [[ -n $output ]]
  then
    if [[ -n $string ]]
    then
      echo $string | tee -a $output
    fi
fi