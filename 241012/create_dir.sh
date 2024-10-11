#!/bin/bash

read -p " 생성할 폴더 이름 : " foldername

if [ -d $foldername ]; then 
	echo "$foldername" 이 이미 존재합니다.
else
	mkdir -p $foldername
	echo $foldername 이 생성되었습니다.
fi
	
