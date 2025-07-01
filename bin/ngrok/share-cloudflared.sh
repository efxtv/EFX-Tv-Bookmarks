#!/bin/bash
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
Clear='\033[0m'

# Join t.me/efxtv for more

# pkg update;pkg upgrade
# apt install php cloudflared wget

starts() {
    ls -p | grep -v / | awk '{print "<b><a href=\""$1"\">"$NF"</a></b><br />"}' | awk '!/index.html/' > index.html

    php -S 127.0.0.1:9012 > /dev/null 2>&1 &

    echo > ~/.cloudflared/.cf.log > /dev/null &

    cloudflared tunnel -url 127.0.0.1:9012 --logfile ~/.cloudflared/.cf.log > /dev/null 2>&1 &

    sleep 10

    cdf=$(cat ~/.cloudflared/.cf.log | grep -o 'https://[-0-9a-z]*\.trycloudflare.com')

    echo -e "${Green}[${IGreen}OK${Green}]${Cyan} Access the link:${Green} =${IYellow} $cdf${Clear}"
}

checko() {
     if [[ -e $HOME/.cloudflared ]]; then
         starts
     else
         mkdir -p ~/.cloudflared
         echo -e "[${Green}OK${Clear}] ${Red}Installing Cloudflare Tunnel...${Clear} \n[${Green}OK${Clear}]\c"
	 sudo wget --quiet --show-progress --progress=bar:force https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -O /usr/bin/cloudflared && sudo chmod +x /usr/bin/cloudflared
	 echo -e "[${Green}OK${Clear}] ${Green}Installation complete.${Blue} Try again using ${White}cloud ip${Blue}:${White}port...${Clear}"
     fi
 }
 
checko
starts
