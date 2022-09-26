#!/bin/sh
# 입력 받은 hash code로 DEV/STG/CBT-BETA를 리셋합니다.
echo "Hello, SPA"
message=""

if [ "$1" = "" ]
then echo "empty hashcode"
else message=$1
    echo "reset hashcode is, $message"

    echo "dev start"
    git checkout feature/a
    git reset --hard $message
    git push -f --no-verify

    echo "dev complete"

    echo "stg start"
    git checkout feature/b
    git reset --hard $message
    git push -f --no-verify

    echo "stg complete"
fi

