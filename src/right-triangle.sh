#!/usr/bin/env bash

source ./src/helpers.sh

HEIGHT=20
WIDTH=21
OFFSET=10

INDEX=0

printf "\n"

while (($INDEX < $HEIGHT)); do
    # Render the left side.
    repeat-string "#" 1
    indent-string $OFFSET 1

    # Render the right side.
    repeat-string "\\\\" 1
    indent-string $(($INDEX*2))

    INDEX=$(($INDEX+1))
done

# Render the lower side.
repeat-string "=" $(($WIDTH*2-1))
indent-string $OFFSET

printf "\n"
