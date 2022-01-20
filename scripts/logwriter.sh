#!/bin/bash
time=$(date -d "@$(date +%s)")
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
      echo "[${timw}] -> [${string}]" | tee -a $output
    fi
fi