#!/usr/bin/env bash

source ./src/helpers.sh

SIDE=20
OFFSET=10
INDEX=0

printf "\n"

while (($INDEX < $SIDE)); do
    repeat-string "\/" 1
    indent-string $(($OFFSET+$SIDE-$INDEX)) 1

    repeat-string "\\\\" 1
    indent-string $(($INDEX*2))

    INDEX=$(($INDEX+1))
done

repeat-string "=" $(($SIDE*2))
indent-string $(($OFFSET+1))

printf "\n"
