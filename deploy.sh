#!/bin/sh
# 입력 받은 hash code로 DEV/STG/CBT-BETA를 리셋합니다.
echo "Hello, SPA"
message=$(git rev-parse HEAD)

if [ "$1" = "" ]
then echo "empty hashcode, $message"
else message=$1
    echo "reset hashcode is, $message"

    echo "dev start"
    git checkout deploy/DEV
    git reset --hard $message
    git push -f --no-verify

    echo "dev complete"

    echo "stg start"
    git checkout deploy/STG
    git reset --hard $message
    git push -f --no-verify

    echo "stg complete"

    echo "cbt-beta start"
    git checkout deploy/CBT-BETA
    git reset --hard $message
    git push -f --no-verify

    echo "cbt-beta complete"
fi

