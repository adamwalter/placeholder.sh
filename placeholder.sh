#!/bin/bash

if [ $# -gt 0 ]; then
    WIDTH=$1
    HEIGHT=$2
    TEXT=$3
    if [ "$TEXT" != "" ]; then
        curl http://placehold.it/"$WIDTH"x"$HEIGHT".jpeg\&text="$TEXT" -o "$TEXT".jpeg
    else
        curl -O http://placehold.it/"$WIDTH"x"$HEIGHT".jpeg
    fi
fi
