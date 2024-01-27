#!/bin/bash
while true; do
    python FULLCLICK3.py  # รันโปรแกรม Python
    EXIT_CODE=$?       # เก็บรหัสออกของโปรแกรม Python
    sleep 20            # หยุดการทำงานของ script นี้เป็นเวลา 5 วินาที

    # ตรวจสอบสถานะการทำงานของโปรแกรม Python
    if [ $EXIT_CODE -eq 0 ]; then
        echo "โปรแกรมทำงานเสร็จสมบูรณ์"
    else
        echo "มีข้อผิดพลาดในการทำงาน รหัส: $EXIT_CODE"
    fi
done
