#!/bin/bash

userlist=$(cut -d ':' -f 1 /etc/passwd)
echo "$userlist"
user_count=$(echo "$userlist"|wc -l)
echo "총 사용자 수 : $user_count"
