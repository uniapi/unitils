#!/bin/bash
# **********************************************************************  
#                         Written by Ali Muhammed
#                           uniapi@outlook.com
#                              July 13, 2018
# **********************************************************************  

# Dependencies: uint.sh

fill() {
    FILL="$1"
    WIDTH="$2"

    if [ -z "$FILL" ]; then
        FILL=' '
    fi
    if [ -z "$WIDTH" ]; then
        WIDTH=50
    else
        WIDTH="$(uint $WIDTH)"
        OPCODE=$?
        if [ $OPCODE -ne 0 ]; then
            if [ $OPCODE -le 2 ]; then
                printf 'fill: width should be non-negative\n' >&2
                if [ $OPCODE -eq 2 ]; then
                    return $OPCODE
                fi 
            fi
            exit $OPCODE
        fi
    fi
    printf "%0.s$FILL" $(seq 1 $WIDTH)
}

# fill "$@"
