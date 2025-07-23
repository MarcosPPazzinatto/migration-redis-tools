#!/bin/bash

bucket='XYZ'
files_array=(XYZ.json XYZ.json)
time=1

cd ~/dump || exit

echo "Starting dump transfer..."

for (( i=0; i<${#files_array[@]}; i++ )); do   
  aws s3 cp "${files_array[$i]}" "$bucket/${files_array[$i]}"
  sleep "$time"
done

