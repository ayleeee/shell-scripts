#!/bin/bash

threshold=80
res=$(df -h | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$res" -gt "$threshold" ]; then
	echo "$(date): 경고! / 디렉토리의 디스크 사용량이 $res%입니다. 임계치($threshold%)를 초과했습니다."
else
	echo "$(date): / 디렉토리의 디스크 사용량이 $res%로 안전한 수준입니다."
fi

