#!/bin/bash
echo "Port Scanner Tool"
read -p "Enter IP address: " ip
nmap -sV $ip
read -p "Press Enter to return..."
./toolkit.sh
