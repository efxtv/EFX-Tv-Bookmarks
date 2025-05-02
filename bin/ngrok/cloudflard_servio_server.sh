#!/bin/bash

# depends add cloudflared file ~/.links/cloudflared-termux
# Usage: ./app.sh 127.0.0.1:8080
# or
# ./app.sh 192.168.1.8:8090

# Kill existing tunnel processes
kill_existing() {
    pkill -f "ssh -o StrictHostKeyChecking=no -R 80:.* serveo.net" >/dev/null 2>&1
    pkill -f "cloudflared-termux tunnel -url" >/dev/null 2>&1
    sleep 1
}

servios() {
    if [ -z "$1" ]; then
        echo "Error: No address:port provided for servios"
        return 1
    fi

    local TUNNEL_LOG
    TUNNEL_LOG=$(mktemp) || { echo "Error creating temp file"; return 1; }

    ssh -o StrictHostKeyChecking=no -R 80:"$1" serveo.net > "$TUNNEL_LOG" 2>&1 &
    local SSH_PID=$!

    local timeout=30
    local count=0
    while ! grep -q "https://" "$TUNNEL_LOG"; do
        sleep 1
        count=$((count + 1))
        if [ "$count" -ge "$timeout" ]; then
            echo "Error: Timeout waiting for Serveo URL"
            kill "$SSH_PID" 2>/dev/null
            rm -f "$TUNNEL_LOG"
            return 1
        fi
    done

    local TUNNEL_URL
    TUNNEL_URL=$(grep -oE "https?://[a-zA-Z0-9./?=_-]*" "$TUNNEL_LOG" | head -n 1)
    echo -e "\nLink: \e[33m$TUNNEL_URL\e[0m"
    rm -f "$TUNNEL_LOG"

    disown "$SSH_PID"
}

clodfla() {
    if [ -z "$1" ]; then
        echo "Error: No address:port provided for Cloudflared"
        return 1
    fi

    if [ ! -f ~/.links/cloudflared-termux ]; then
        echo "Error: cloudflared-termux not found in ~/.links/"
        return 1
    fi

    chmod +x ~/.links/cloudflared-termux >/dev/null 2>&1
    > ~/.links/.cf.log 2>/dev/null
    ~/.links/cloudflared-termux tunnel -url "$1" --logfile ~/.links/.cf.log >/dev/null 2>&1 &
    
    local timeout=15
    local count=0
    local cdf=""
    
    while [ -z "$cdf" ] && [ "$count" -lt "$timeout" ]; do
        sleep 1
        cdf=$(grep -o 'https://[-0-9a-z]*\.trycloudflare.com' ~/.links/.cf.log 2>/dev/null | head -n 1)
        count=$((count + 1))
    done

    if [ -z "$cdf" ]; then
        echo "Error: Could not get Cloudflare tunnel URL"
        return 1
    fi
    
    echo -e "Link: \e[33m$cdf\e[0m\n"
}

if [ $# -eq 0 ]; then
    echo "Usage: $0 <local_address:port>"
    exit 1
fi

kill_existing

servios "$1"
clodfla "$1"
