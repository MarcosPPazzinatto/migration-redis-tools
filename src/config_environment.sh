#!/bin/sh

apt update

apt install unzip curl redis-tools nodejs npm -y

npm install -g redis-dump

mkdir ~/dump

cd ~/dump

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

./aws/install

aws configure

