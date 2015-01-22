#!/usr/bin/env bash

source ./src/helpers.sh

SIDE=20
WIDTH=40
OFFSET=10

printf "\n"

INDEX=0

while (($INDEX < $SIDE)); do
    repeat-string "\/" 1
    indent-string $(($OFFSET+$SIDE-$INDEX)) 1

    repeat-string "\\\\" 1
    indent-string $(($INDEX*2))

    INDEX=$(($INDEX+1))
done

repeat-string "=" $WIDTH
indent-string $(($OFFSET+1))

printf "\n"
