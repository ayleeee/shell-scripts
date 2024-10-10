#!/bin/bash

read -p "확인하고 싶은 프로세스 명 : " processName
result=$(sudo systemctl is-active "$processName" 2>/dev/null )

if [ "$result" == "active" ]; then
	echo "프로세스 '$processName' 실행중입니다."
else
	echo "프로세스 '$processName' 실행중이지 않습니다."
fi
