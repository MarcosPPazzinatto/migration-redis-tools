#!/bin/bash

ip_array=(
  "xyz"
  "xyz"
  "xyz"
  "xyz"
  "xyz"
)

files_array=(
  xyz.json
  xyz.json
  xyz.json
  xyz.json
  xyz.json
)

time=5

cd ~/dump || exit

for (( i=0; i<${#files_array[@]}; i++ )); do
  echo "Start restore dump: ${files_array[$i]} to ${ip_array[$i]}"
  cat "${files_array[$i]}" | redis-cli -h "${ip_array[$i]}" -p 6379
  sleep "$time"
done

