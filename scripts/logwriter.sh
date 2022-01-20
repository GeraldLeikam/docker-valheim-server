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
  echo true
fi
echo $string
echo $output