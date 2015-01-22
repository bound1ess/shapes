#!/usr/bin/env bash

source ./src/helpers.sh

TOTAL=42
HALF=$(($TOTAL/2-1)) # This will be changed in runtime.
QUARTER=$(($TOTAL/4))
HALF_CONST=$HALF # This will remain.
OFFSET=10

set-size $TOTAL
populate-elements-array

printf "\n"

for INDEX in "${!ELEMENTS[@]}"; do
    if (($INDEX % 2 == 0)); then
        # Render the left side.
        if (($INDEX < $HALF_CONST)); then
            repeat-string "\/" 1
            indent-string $(($HALF_CONST-$INDEX+$OFFSET)) 1
        else
            repeat-string "\\\\" 1
            indent-string $(($INDEX-$HALF_CONST+$OFFSET)) 1
        fi

        # Render the right side.
        if (($INDEX < $HALF_CONST)); then
            repeat-string "\\\\" 1
            indent-string $(($INDEX*2))
        else
            repeat-string "\/" 1
            indent-string $(($HALF*2))

            HALF=$(($HALF-2))
        fi
    fi
done

printf "\n"
