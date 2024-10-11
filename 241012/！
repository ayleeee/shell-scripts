#!/bin/bash

read -p " 원본 파일 경로 : " origindir
read -p " 복사할 경로 : " copydir

mkdir -p $copydir

cp -r $origindir $copydir

# bashname "$origindir" 는 원본 파일이나 디렉토리의 이름만 추출
# -e　파일이나 디렉토리가 존재하는지 여부 검사
if [ -e "$copydir/$(basename "$origindir")" ]; then
    echo "'$origindir'이(가) '$copydir'에 성공적으로 복사되었습니다."
else
    echo "'$origindir'을(를) '$copydir'로 복사하지 못했습니다."
fi

