#!/bin/bash

number=7

read -p "Guess the number! : " guess
if [ $number -ne $guess ]; then
	echo "틀렸습니다. 다시 시도하세요."
else
	echo "정답입니다!"
fi

