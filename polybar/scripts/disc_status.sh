#!/usr/bin/env bash

disc_title=$(lsblk -f | grep sr0 | tr -s ' ' ',' | cut -d',' -f4)

if [[ "$disc_title" == "" ]]; then
    echo "NO_DISC"
else
    echo "$disc_title"
fi
