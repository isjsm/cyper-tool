#!/bin/bash

# إعداد الواجهة
clear
figlet -f slant "Anoymoys Jordan" | boxes -d ada-box -a c
echo -e "\n[1] Scan ports Tool"
echo "[2] Vulnerability Scanner"
echo "[3] Network Analysis Tool"
echo "[4] Hacking accounts Tool"
echo "[5] exit"

read -p "Choose: " choice

case $choice in
    1) ./tools/port_scanner.sh ;;
    2) ./tools/vuln_checker.sh ;;
    3) ./tools/network_analyzer.sh ;;
    4) nano ./tools/new_tool.sh ;;  # لإضافة أداة جديدة
    5) exit 0 ;;
    *) echo "Tool Not Here!" ;;
esac
