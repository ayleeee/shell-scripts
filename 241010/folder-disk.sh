#!/bin/bash

directory="$HOME"

usage=$(df -h "$directory" | awk 'NR==2 {print $5}' | sed 's/%//')
if [ "$usage" -ge 80 ]; then
    echo "$(date): 경고! $directory 디렉토리의 디스크 사용량이 ${usage}%입니다."
elif [ "$usage" -le 50 ]; then
    echo "$(date): $directory 디렉토리의 디스크 사용량이 ${usage}%로 안전한 수준입니다."
else
    echo "$(date): $directory 디렉토리의 디스크 사용량이 ${usage}%입니다. 주의가 필요합니다."
fi
