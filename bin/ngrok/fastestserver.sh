#!/bin/bash

# install cloudflared to use it
# wget https://github.com/cloudflare/cloudflared/releases/download/2025.11.1/cloudflared-fips-linux-amd64.deb
# pkg install cloudflared

# How to use
# ./app.sh  http://localhost:3000
# ./app.sh  localhost:8080

if [ -z "$1" ]; then
    echo "Usage: $0 <host:port or url>"
    exit 1
fi

INPUT="$1"

# Ensure the URL has http:// prefix
if [[ "$INPUT" =~ ^http ]]; then
    URL_LOCAL="$INPUT"
else
    URL_LOCAL="http://$INPUT"
fi

# Run cloudflared silently in the background
cloudflared tunnel --url "$URL_LOCAL" >/tmp/cf.log 2>&1 &
CLOUDFLARED_PID=$!

# Wait for URL to appear
while : ; do
    PUBLIC_URL=$(grep -oE "https://[a-zA-Z0-9.-]+\.trycloudflare\.com" /tmp/cf.log)
    if [[ -n "$PUBLIC_URL" ]]; then
        echo "SCRIPT BY: (EFXTv)  $PUBLIC_URL"
        break
    fi
    sleep 0.2
done
