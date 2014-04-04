#!/bin/bash

# taken from https://gist.github.com/cdown/1163649
function url_encode() {
    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf "$c" ;;
            ' ') printf + ;;
            *) printf '%%%X' "'$c"
        esac
    done
}


if [ $# -gt 0 ]; then
    WIDTH=$1
    HEIGHT=$2
    TEXT=$3
    TEXT_ENC=$(url_encode "$TEXT")
    if [ "$TEXT" != "" ]; then
        curl http://placehold.it/"$WIDTH"x"$HEIGHT".jpeg\&text="$TEXT_ENC" -o "$TEXT".jpeg
    else
        curl -O http://placehold.it/"$WIDTH"x"$HEIGHT".jpeg
    fi
else
    echo "You need to specify WIDTH and HEIGHT"
fi
