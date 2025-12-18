#!/bin/bash

# ngrok config add-authtoken AUTHTOKENHERE
# 1. Start the ngrok TCP tunnel (background)
ngrok tcp $1 > /dev/null &

# 2. Give it time to establish connection
sleep 8

# 3. Get the FULL TCP URL (tcp://0.tcp.ngrok.io:xxxxx)
public_url=$(curl -s localhost:4040/api/tunnels | jq -r '.tunnels[] | select(.proto=="tcp") | .public_url')

# 4. Extract the IP address (resolving the hostname)
ip=$(curl -s localhost:4040/api/tunnels | jq -r '.tunnels[] | select(.proto=="tcp") | .public_url' | sed 's#tcp://##;s#:.*##' | xargs -I@ sh -c 'host @' | awk '{print $NF}')

# 5. Extract only the PORT
port=$(curl -s localhost:4040/api/tunnels | jq -r '.tunnels[] | select(.proto=="tcp") | .public_url' | cut -d: -f3)

# 6. Output the results
echo -e "[+] PUBLIC URL	: $public_url"
echo -e "[+] RESOLVED IP: $ip"
echo -e "[+] PORT	: $port"
