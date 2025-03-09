#!/bin/bash
# تثبيت الاعتمادات
sudo apt update
sudo apt install -y figlet boxes nmap

# إنشاء رابط رمزي
sudo ln -sf $(pwd)/toolkit.sh /usr/local/bin/cyper-tool
sudo chmod +x /usr/local/bin/cyper-tool

echo -e "\nInstallation complete! Use: cyper-tool"
