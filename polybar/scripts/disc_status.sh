#!/usr/bin/env bash

disc_title=$(lsblk -f | grep sr0 | awk '{
        for (i = 4; i < NF; i++) {
            printf "%s%s", $i, (i < NF-1 ? " " : "")
        }
        printf ""
}')

if [[ "$disc_title" == "" ]]; then
    echo "NO_DISC"
else
    echo "$disc_title"
fi
