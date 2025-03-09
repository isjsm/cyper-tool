#!/bin/bash
echo "أداة مسح المنافذ باستخدام Nmap"
read -p "أدخل عنوان IP: " ip
nmap -sV $ip
read -p "اضغط Enter للعودة إلى القائمة..."
./toolkit.sh
