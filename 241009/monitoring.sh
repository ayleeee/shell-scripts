#!/bin/bash

logdir="$HOME"
logfile="service_status.log"

touch "$logdir"/"$logfile"

service_name="nginx"
status=$(sudo systemctl is-active "$service_name")

echo "$(date): $service_name의 현재 상태: $status" >> "$logdir/$logfile"

# 서비스가 active 상태가 아닐 경우 재시작 시도
if [ "$status" != "active" ]; then
    echo "$(date): $service_name이 멈춰있습니다. 재실행을 시도합니다." >> "$logdir/$logfile"
    sudo systemctl start "$service_name"
    
    # 재시작 결과 기록
    if [ $? -eq 0 ]; then
        echo "$(date): $service_name가 정상적으로 재시작되었습니다." >> "$logdir/$logfile"
    else
        echo "$(date): $service_name이 재시작되지 않았습니다." >> "$logdir/$logfile"
    fi
fi
