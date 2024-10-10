#!/bin/bash

workdir="$HOME/mydata"
backdir="$HOME/mybackup"

# 백업 폴더 없으면 만들기
mkdir -p "$HOME/mybackup"
mkdir -p "$HOME/mydata"
cp -r $workdir/*.txt $backdir

echo "백업된 파일 내용"
ls "$backdir"
