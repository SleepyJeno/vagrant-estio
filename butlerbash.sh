#!/bin/bash
name=$1
user=$(whoami)
directory=$(pwd)
date=$(date +%Y-%m-%d)
echo "hello there"
sleep 0.5
echo $name
sleep 0.5
echo "You are logged in as $user in the directory $directory on $date"