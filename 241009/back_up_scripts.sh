#!/bin/bash

# 특정 디렉토리에 저장된 로그 파일들 찾아 7일 이상 된 파일 압축, backup 디렉토리로 옮기기. 그 후 30일 이상 된 압축 파일들은 삭제

workdir="home/username/logs"
backdir="home/username/backup"

# 백업 디렉토리가 없으면 생성
mkdir -p "$backdir"

# workdir에서 type이 파일인 것들만, 그리고 7일 이상 된 확장자가 log인 것들을 찾아라. find 명령의 결과를 while 루프에 전달함. 그리고 그 경로를 한 줄씩 읽어서 file 변수에 저장. -r 은 백슬래시를 그대로 해석. 파일에 특수 문자가 있어도 처리 가능.
find "$workdir" -type f -mtime +7 -name "*.log" | while read -r file;do
    gzip "$file"
    mv "$file.gz" "backdir"
done

# -exec는 find로 찾은 파일에 대해 특정 명령 실행하도록 함. 
# {} find로 찾은 각 파일의 경로
# \; -exec 명령의 끝을 알리며 각 파일마다 rm 실행
find "backdir" -type f -mtime +30 -name "*.gz" -exec rm -f {} \;

echo "로그 파일 압축 및 정리 작업 완료"
