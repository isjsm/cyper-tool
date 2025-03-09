#!/bin/bash

clear
figlet -f slant "My Toolkit" | boxes -d ada-box -a c

TOOLS_DIR="tools"

# دالة حذف الأداة
delete_tool() {
    echo -e "\n------- حذف أداة -------"
    echo "اختر الأداة التي تريد حذفها:"
    tools=("$TOOLS_DIR"/*.sh)
    for i in "${!tools[@]}"; do
        tool_name=$(basename "${tools[$i]}" .sh | tr '_' ' ')
        echo "[$i] $tool_name"
    done
    read -p "أدخل رقم الأداة: " index
    if [ -f "${tools[$index]}" ]; then
        rm "${tools[$index]}"
        echo "تم حذف الأداة!"
    else
        echo "رقم الأداة غير صحيح!"
    fi
}

# دالة إعادة التثبيت
reinstall_toolkit() {
    echo -e "\n------- إعادة التثبيت -------"
    chmod +x install.sh
    ./install.sh
}

# القائمة الرئيسية
echo -e "\n[1] أداة مسح المنافذ"
echo "[2] أداة فحص الثغرات"
echo "[3] أداة تحليل الشبكة"
echo "[4] إضافة أداة جديدة"
echo "[5] حذف أداة"
echo "[6] إعادة تثبيت الأدوات"
echo "[7] الخروج"

read -p "اختر خيارًا: " choice

case $choice in
    1) ./tools/port_scanner.sh ;;
    2) ./tools/vuln_checker.sh ;;
    3) ./tools/network_analyzer.sh ;;
    4) nano ./tools/new_tool.sh ;;
    5) delete_tool ;;
    6) reinstall_toolkit ;;
    7) exit 0 ;;
    *) echo "اختيار غير صحيح!" ;;
esac
