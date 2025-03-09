#!/bin/bash
echo "Port Scanner By namp"
read -p "Enter Website Ip: " ip
nmap -sV $ip
read -p "Chose Enter To Exit"
./toolkit.sh
