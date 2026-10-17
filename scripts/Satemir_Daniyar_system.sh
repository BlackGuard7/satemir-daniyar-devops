#!/bin/bash

echo "=== Student Information ==="
cat ~/devops/satemir_daniyar/Satemir_Daniyar_info.txt
echo ""

echo "=== System Information ==="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -s)"
echo "Disk Usage: $(df -h / | tail -1 | awk '{print $5}')"
echo "Memory Usage: $(vm_stat | grep 'free' | awk '{print $3 " pages free"}')"
echo ""

echo "=== File Check ==="
if [ -f ~/devops/satemir_daniyar/Satemir_Daniyar_info.txt ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
# System script
