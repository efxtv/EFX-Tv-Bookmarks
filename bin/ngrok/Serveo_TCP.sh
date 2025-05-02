#!/bin/bash

# Usage: ./serveo_tunnel.sh 8790

SSH_PORT="$1"
LOG_FILE="serveo_output.log"
SERVEO_DOMAIN="serveo.net"
TIMEOUT=60  # Maximum wait time in seconds

# Initialize variables
tunnel_pid=""
success=false

cleanup() {
    if [ -n "$tunnel_pid" ]; then
        kill "$tunnel_pid" 2>/dev/null
    fi
    exit
}

trap cleanup EXIT SIGINT SIGTERM

ssh -o StrictHostKeyChecking=no -R 0:localhost:$SSH_PORT $SERVEO_DOMAIN > "$LOG_FILE" 2>&1 &

echo;echo -n "[+] Waiting for tunnel to establish"
start_time=$(date +%s)
while [ $(( $(date +%s) - start_time )) -lt $TIMEOUT ]; do
    if grep -q "Forwarding TCP" "$LOG_FILE"; then
        success=true
        break
    fi
    echo -n "."
    sleep 1
done
echo

if [ "$success" = false ]; then
    echo "[✗] Error: Failed to establish tunnel within $TIMEOUT seconds"
    echo "Check $LOG_FILE for details"
    exit 1
fi

# Extract connection details
serveo_ip=$(host "$SERVEO_DOMAIN" | awk 'NR==1 {print $NF}')
serveo_endpoint=$(grep "Forwarding TCP" "$LOG_FILE" | awk '{print $NF}')
local_endpoint=$(grep "localhost" "$LOG_FILE" | awk '{print $NF}'|sed 's#:# : #g'|awk '{print $NF}')

printf "%-12s %s\n" "[+] IP    :" "$serveo_ip"
printf "%-12s %s\n" "[+] RPORT :" "$(echo "$serveo_endpoint" | cut -d: -f2)"
printf "%-12s %s\n" "[+] LPORT :" "$local_endpoint"
echo


# Minimal Veraion 

#ssh -o StrictHostKeyChecking=no -R 0:localhost:8022 serveo.net > serveo_output.log 2>&1 &
#while ! grep -q "Forwarding TCP" serveo_output.log; do sleep 1; done
#echo;echo '[✓] YOUR STATIC IP AND PORTS'
#host serveo.net | sed -n '1p' | awk '{print $NF}' | sed 's#^#IP   : #g'
#grep "serveo" serveo_output.log | awk '{print $NF}' | sed 's#:# : #g' | awk '{print $NF}' | sed 's#^#PORT : #g'
#grep "localhost" serveo_output.log | awk '{print $NF}' | sed 's#:# : #g' | awk '{print $NF}' | sed 's#^#LOPO : #g'

