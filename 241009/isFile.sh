#!/bin/bash

filename="/home/username/sample.txt"

if [ -f "$filename" ]; then
	echo 파일이 존재합니다.
else
	echo 파일이 존재하지 않습니다.
fi

