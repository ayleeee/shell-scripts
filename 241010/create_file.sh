#!/bin/bash

read -p " 생성할 파일 이름을 작성해주세요 : " filename
touch "./$filename"

if [ -f "$filename" ]; then
	echo "파일 '$filename'이 생성되었습니다."
else
	echo "파일 생성에 실패하였습니다."
fi
