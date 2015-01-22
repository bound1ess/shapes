#!/usr/bin/env bash

# Clone the repository.
git clone https://github.com/bound1ess/selectable.git

# Cd into it.
cd ./selectable

# Build selectable.sh using the provided executable.
./build-selectable-auto --to=".." --from="./shapes" --save="shape"

# Cd back and remove the cloned repository folder.
cd .. && rm -rf ./selectable

# Make the generated file executable.
chmod +x ./selectable.sh
