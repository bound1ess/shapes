#!/usr/bin/env bash

# Include Selectable.
source ./selectable.sh

include-source-file() {
    # Include the appropriate source file.
    source "./src/$(tr " " "-" <<< ${SHAPE,,}).sh"
}

include-source-file
sleep 10

while true; do
    selectable-run
    include-source-file

    sleep 10 # Give the user 10 seconds.
done
