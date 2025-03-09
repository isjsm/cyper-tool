#!/bin/bash

# تثبيت الاعتمادات
sudo apt update
sudo apt install -y figlet boxes nmap

# إنشاء روابط رمزية في /usr/local/bin
sudo ln -sf $(pwd)/toolkit.sh /usr/local/bin/mytool
sudo chmod +x /usr/local/bin/mytool

echo -e "\nتم التثبيت! يمكنك الآن استخدام الأمر: mytool"
