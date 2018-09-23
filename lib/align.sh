#!/bin/bash
# **********************************************************************  
#                         Written by Ali Muhammed
#                           uniapi@outlook.com
#                              July 13, 2018
# **********************************************************************  

# Dependencies: uint.sh fill.sh

align() {
    STR="$1"
    WIDTH=$2

    if [ -z "$STR" ]; then
        printf "usage: align [string] [width]\n" >&2
        if ! [ -z "$EXITONFAIL" ]; then
            exit 1
        fi
        return 1
    fi
    if [ -z "$WIDTH" ]; then
        WIDTH=50
    else
        WIDTH=$(uint $WIDTH)
    fi

    ALIGN=$[($WIDTH-${#STR}+1)/2]
    SPC="$(fill ' ' $ALIGN)"
    printf "%s%s" "$SPC" "$STR"
}

# align "$@"
