#!/bin/bash
# version 1
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

sss(){
cd /L3MON
sleep 2
}

paas(){

if [[ -e /L3MON/maindb.json ]]
then
cat /L3MON/maindb.json.back >/L3MON/maindb.json
passwordds=$(echo -n efxtv | openssl md5|awk '{print $2}')
sed -i "s/    \"password\":.*/    \"password\": \"$passwordds\",/g" /L3MON/maindb.json
pm2 restart index.js 1>/dev/null
echo -e "${Green}[${IGreen}1${Green}]${IYellow} Password changed efxtv ${clear}"
else
cd /L3MON
pm2 restart index.js 1>/dev/null
sleep 1
pm2 stop index.js 1>/dev/null

echo -e "${Green}[${IGreen}1${Green}]${Red} [ERROR] maindb.json not found. Try again ${clear}"
fi

#passwordds=$(echo -n efxtv | openssl md5|awk '{print $2}')
#sed -i "s/    \"password\":.*/    \"password\": \"$passwordds\",/g" maindb.json

}

sss
paas
