#!/usr/bin/env bash

POSSIBLE_CONNECTIONS="connecting connected disconnected blocked"

vpn_status=$(mullvad status | cut -d ' ' -f1 | tr '[:upper:]' '[:lower:]')
status=$(echo "$POSSIBLE_CONNECTIONS" | grep -w "$vpn_status" > /dev/null)

if [[ "$vpn_status" = "connected" ]]; then
    echo ""
elif [[ "$vpn_status" = "disconnected" ]]; then
    echo ""
else
    mullvad status
fi
