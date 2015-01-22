#!/usr/bin/env bash

source ./src/helpers.sh

SIDE=20

# Insert a new line.
printf "\n"

# Render the upper side.
repeat-string "##" $(($SIDE-1))
indent-string $(($SIDE/2))

INDEX=0

while (($(($SIDE-2)) > $INDEX)); do
    # Render sides.
    repeat-string " " $(($SIDE*2-4))
    repeat-string "#${BUFFER}#" 1

    indent-string $(($SIDE/2))

    INDEX=$(($INDEX+1))
done

# Render the lower side.
repeat-string "##" $(($SIDE-1))
indent-string $(($SIDE/2))

# One more new line.
printf "\n"
