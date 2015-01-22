#!/usr/bin/env bash

# Include Selectable.
source ./selectable.sh

# Include the appropriate source file.
source "./src/$(tr " " "_" <<< ${SHAPE,,}).sh"
