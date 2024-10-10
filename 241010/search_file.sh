#!/bin/bash

read -p "Directory : " dirname
read -p "FileName : " filename

result=$(find "$dirname" -name "$filename" 2>/dev/null)

if [ -f "$result" ]; then
	echo "해당 파일이 존재합니다 : $result"
else
	echo "파일이 존재하지 않습니다."
fi

