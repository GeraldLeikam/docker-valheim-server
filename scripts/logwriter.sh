#!/bin/bash

while getopts s:o: flag
do
    case "${flag}" in
        s) string=${OPTARG};;
        o) output=${OPTARG};;
    esac
done
echo $string
echo $output