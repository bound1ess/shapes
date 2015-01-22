#!/usr/bin/env bash

source ./src/helpers.sh

SIDE1=30
SIDE2=$(($SIDE1/2))

# Print a new line.
printf "\n"

# Side #1
repeat-string "##" $(($SIDE1-1))
indent-string $SIDE2

INDEX=0

while (($(($SIDE2-2)) > $INDEX)); do
    # Render sides #2 and #3
    repeat-string " " $(($((SIDE1-2))*2))
    repeat-string "#${BUFFER}#" 1

    indent-string $SIDE2

    INDEX=$(($INDEX+1))
done

# Side #4
repeat-string "##" $(($SIDE1-1))
indent-string $SIDE2

# A new line character again.
printf "\n"
