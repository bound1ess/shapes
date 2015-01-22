#!/usr/bin/env bash

source ./src/helpers.sh

TOTAL=42
HALF=$(($TOTAL/2-1)) # This will be changed in runtime.
QUARTER=$(($TOTAL/4))
HALF_CONST=$HALF # This will remain.
OFFSET=10

set-size $TOTAL
populate-elements-array

echo $ELEMENTS

for INDEX in "${!ELEMENTS[@]}"; do
    if (($INDEX % 2 == 0)); then
        repeat-string "<>" 1

        # Render left side.
        if (($INDEX < $HALF_CONST)); then
            indent-string $(($HALF_CONST-$INDEX+$OFFSET)) 1
        else
            indent-string $(($INDEX-$HALF_CONST+$OFFSET)) 1
        fi

        # Render right side.
        if (($INDEX < $HALF_CONST)); then
            indent-string $(($INDEX*2))
        else
            indent-string $(($HALF*2))

            HALF=$(($HALF-2))
        fi
    fi
done

printf "\n"
