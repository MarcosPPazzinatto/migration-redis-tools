#!/bin/bash

redis_array=(
  "XYZ" 
  "XYZ"
  "XYZ"
  "XYZ"
  "XYZ"
)

files_array=(
  XYZ.json 
  XYZ.json 
  XYZ.json 
  XYZ.json 
  XYZ.json
)

time=2

cd ~/dump || exit

for (( i=0; i<${#redis_array[@]}; i++ )); do
  echo "Start dump redis: ${redis_array[$i]}"
  redis-dump -h "${redis_array[$i]}" -p 6379 > "${files_array[$i]}"
  sleep "$time"
done

echo "Size files:"

for (( i=0; i<${#files_array[@]}; i++ )); do 
  du -h "${files_array[$i]}"
done

