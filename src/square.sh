#!/usr/bin/env bash

source ./src/helpers.sh

SIZE=200
SIDE=$(($SIZE/4))

# Render the upper side.
repeat-string "H" $SIDE
indent-string $(($SIDE/2))

# Render sides.
