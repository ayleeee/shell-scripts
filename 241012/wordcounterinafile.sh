#!/bin/bash

read -p " 파일 이름 : " filename
read -p " 찾고 싶은 단어 : " word

if [ -f "$filename" ]; then
	count=$(grep -o "$word" "$filename" | wc -l)
	echo "'$word' 단어가 '$filename' 안에 '$count' 번 존재합니다."
else
	echo "$filename"이 존재하지 않습니다.
fi
