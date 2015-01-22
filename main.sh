#!/usr/bin/env bash

# Include Selectable.
source ./selectable.sh

# Clear the screen.
printf "\ec"

# Include the appropriate source file.
source "./src/$(tr " " "_" <<< ${SHAPE,,}).sh"
