#!/bin/bash

# Author: Yuvraj Singh
# Purpose: Generate a system information report

echo "=========================================="
echo "       SYSTEM INFORMATION REPORT"
echo "=========================================="

echo "Name: Yuvraj Singh"
echo "Roll Number: 2601730069"
echo "Date: $(date)"
echo

echo "---------- CPU INFORMATION ----------"

CPU_MODEL=$(lscpu | awk -F: '/Model name/ {
    gsub(/^[ \t]+/, "", $2)
    print $2
    exit
}')

CPU_CORES=$(lscpu -p=CORE,SOCKET | awk -F, '!/^#/ {print $1 "-" $2}' | sort -u | wc -l)

echo "CPU Model: $CPU_MODEL"
echo "Physical CPU Cores: $CPU_CORES"
echo

echo "---------- MEMORY INFORMATION ----------"

free -h | awk '/^Mem:/ {
    print "Total Memory: " $2
    print "Used Memory: " $3
}'

echo

echo "---------- TOP 3 PROCESSES BY CPU ----------"

ps -eo pid,comm,%cpu --sort=-%cpu | head -n 4

echo
echo "=========================================="
echo "Report generated successfully."
echo "=========================================="

