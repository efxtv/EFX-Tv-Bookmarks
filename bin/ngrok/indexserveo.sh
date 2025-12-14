#!/bin/bash

php -S localhost:3000 > /dev/null 2>&1 &
PHP_PID=$!
sleep 3

TUNNEL_LOG=$(mktemp)
nohup ssh -o StrictHostKeyChecking=no -R 80:localhost:3000 serveo.net > "$TUNNEL_LOG" 2>&1 &
SSH_PID=$!

while ! grep -q "https://" "$TUNNEL_LOG"; do
  sleep 1
done

TUNNEL_URL=$(grep -oE "https?://[a-zA-Z0-9./?=_-]*" "$TUNNEL_LOG" | head -n 1)
echo "Your Server: $TUNNEL_URL"
rm -f "$TUNNEL_LOG"
disown $PHP_PID $SSH_PID
