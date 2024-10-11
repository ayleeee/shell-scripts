#!/bin/bash

read -p "Directory : " directory
cd $directory
# find . -maxdepth 1 -type f | wc -l
# 현재 디렉토리에서 파일인 것만 찾기 | 파일 목록을 전달하여 파일 개수 카운트
file_count=$(find . -maxdepth 1 -type f | wc -l)
echo "total files count : $file_count"
