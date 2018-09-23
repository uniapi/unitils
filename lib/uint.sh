#!/bin/bash
# **********************************************************************  
#                         Written by Ali Muhammed
#                           uniapi@outlook.com
#                              July 11, 2018
# **********************************************************************  

uint() {
    if ! [[ $1 =~ ^[0-9]+$ ]]; then
        printf 'uint: not unsigned integer\n' >&2
        if ! [ -z "$EXITONFAIL" ]; then
            exit 1
        fi
        return 2
    fi
    printf "%d" "$((10#$1))"
}

# uint "$@"
