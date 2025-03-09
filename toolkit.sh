#!/bin/bash

clear
figlet -f slant "Anoymous" | boxes -d ada-box -a c

TOOLS_DIR="tools"

# دالة حذف الأداة
delete_tool() {
    echo -e "\n------- Delete Tool -------"
    echo "Select the tool to delete:"
    tools=("$TOOLS_DIR"/*.sh)
    for i in "${!tools[@]}"; do
        tool_name=$(basename "${tools[$i]}" .sh | tr '_' ' ')
        echo "[$i] $tool_name"
    done
    read -p "Enter tool number: " index
    if [ -f "${tools[$index]}" ]; then
        rm "${tools[$index]}"
        echo "Tool deleted successfully!"
    else
        echo "Invalid tool number!"
    fi
}

# دالة إعادة التثبيت
reinstall_toolkit() {
    echo -e "\n------- Reinstall Toolkit -------"
    chmod +x install.sh
    ./install.sh
}

# القائمة الرئيسية (English)
echo -e "\n[1] Port Scanner"
echo "[2] Vulnerability Checker"
echo "[3] Network Analyzer"
echo "[4] Add New Tool"
echo "[5] Delete Tool"
echo "[6] Reinstall Toolkitt"
echo "[7] Exit"

read -p "Choose an option: " choice

case $choice in
    1) ./tools/port_scanner.sh ;;
    2) ./tools/vuln_checker.sh ;;
    3) ./tools/network_analyzer.sh ;;
    4) nano ./tools/new_tool.sh ;;
    5) delete_tool ;;
    6) reinstall_toolkit ;;
    7) exit 0 ;;
    *) echo "Invalid choice!" ;;
esac
