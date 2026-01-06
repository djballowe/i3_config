#!/usr/bin/env bash
source ~/.config/i3/script-vars

status=$(mullvad-exclude ssh -i "$SERVER_SSH_KEY_PATH" -p "$SERVER_SSH_PORT" "$SERVER_USER"@"$SERVER_IP" "lsblk -f" | grep sr0 | awk '{
        for (i = 4; i < NF; i++) {
            printf "%s%s", $i, (i < NF-1 ? " " : "")
        }
        printf ""
}')

if [[ "$status" == "" ]]; then
    echo "NO_DISC"
else
    echo "$status"
fi
