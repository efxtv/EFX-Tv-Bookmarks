#!/bin/bash

rm -f index.html

TUNNEL_LOG=$(mktemp)

ssh -o StrictHostKeyChecking=no -R 80:localhost:22533 serveo.net > "$TUNNEL_LOG" 2>&1 &
SSH_PID=$!

while ! grep -q "https://" "$TUNNEL_LOG"; do
  sleep 1
done

TUNNEL_URL=$(grep -oE "https?://[a-zA-Z0-9./?=_-]*" "$TUNNEL_LOG" | head -n 1)

echo -e "LOGIN    : \e[33m$TUNNEL_URL\e[0m"
echo -e "DOWNLOAD : \e[33m$TUNNEL_URL/build.s.apk\e[0m"
rm -f "$TUNNEL_LOG"

disown $SSH_PID
