#!/usr/bin/env bash

source ./src/helpers.sh

SIZE=200
SIDE=$(($SIZE/4))

# Insert a new line.
printf "\n"

# Render the upper side.
repeat-string "H" $SIDE
indent-string $(($SIDE/2))

# Render sides.
repeat-string " " $(($SIDE-2))
repeat-string "H${BUFFER}H" 1

indent-string $(($SIDE/2))

# Render the lower side.
repeat-string "H" $SIDE
indent-string $(($SIDE/2))

# One more new line.
printf "\n"
