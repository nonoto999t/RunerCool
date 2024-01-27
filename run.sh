#!/bin/bash

while true; do
    python3 FULLCLICK3.py  # รันโปรแกรม Python
    EXIT_CODE=$?       # เก็บรหัสออกของโปรแกรม Python
    sleep 1800            # หยุดการทำงานของ script นี้เป็นเวลา 5 วินาที

    # ตรวจสอบสถานะการทำงานของโปรแกรม Python
    if [ $EXIT_CODE -eq 0 ]; then
        echo "โปรแกรมทำงานเสร็จสมบูรณ์"
    else
        echo "มีข้อผิดพลาดในการทำงาน รหัส: $EXIT_CODE"
    fi
done
