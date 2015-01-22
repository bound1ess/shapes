#!/usr/bin/env bash

BUFFER=""

# Usage: indent-string [number of spaces] (eg. indent-string 10).
indent-string() {
    echo "$BUFFER" | sed "s/^/$(head -c $1 < /dev/zero | tr '\0' '\040')/"
}

# Usage: repeat-string [string] [times] (eg. repeat-string "foo" 42).
repeat-string() {
    BUFFER=$(head -c $2 < /dev/zero | sed "s/\x0/$1/g")
}

ELEMENTS=()
SIZE=0

# Usage: set-size [size] (eg. set-size 10).
set-size() {
    SIZE=$1
}

# Usage: populate-elements-array [value] (eg. populate-elements-array "[ ]").
populate-elements-array() {
    local INDEX=0
    
    while (($INDEX < $SIZE)); do
        ELEMENTS[$INDEX]="$1"
    done
}
