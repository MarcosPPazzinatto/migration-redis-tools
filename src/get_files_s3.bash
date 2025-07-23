#!/bin/bash

bucket='XYZ'
time=1
files_array=(XYZ.json XYZ.json)

cd ~/dump || exit

echo "Starting dump downloads..."

for (( i=0; i<${#files_array[@]}; i++ )); do     
  aws s3 cp "$bucket/${files_array[$i]}" "${files_array[$i]}"
  sleep "$time"
done

echo "Size of downloaded files:"

for (( i=0; i<${#files_array[@]}; i++ )); do 
  du -h "${files_array[$i]}"
done

