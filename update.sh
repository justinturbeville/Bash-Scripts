#!/bin/bash 

kernal=$(uname -r)
time=$(date)

echo "Start time: "$time > log.txt
sudo apt update -y >> log.txt
sudo apt upgrade -y >> log.txt
echo "End time: "$time >> log.txt

lsb_release -a
echo "Kernal: "$kernal

#this script updates the system and lists the current os and kernal and outputs the results to a log file in the current working directory
