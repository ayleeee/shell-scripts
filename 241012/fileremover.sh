#!/bin/bash

read -p " 삭제하고자 하는 파일 이름 : " filename
if [ -f "$filename" ];then
	# -i 옵션 : 파일 삭제 전에 사용자에게 확인을 요청함
	rm -i $filename
	echo " $filename (이)가 삭제되었습니다."
else
	echo " $filename (이)가 존재하지 않습니다."
fi
