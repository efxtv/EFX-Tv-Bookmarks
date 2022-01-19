#!/bin/bash
clear
echo
echo
echo "	Please subscribe EFX Tv		" |toilet -f term -F border --gay
printf "\e[1;92m[\e[0m+\e[1;92m] Checking for Ngrok Executable...\n"
sleep 3
if [[ -e ngrok ]]; then
clear
echo
echo
echo "	Please subscribe EFX Tv		" |toilet -f term -F border --gay
printf "\e[1;92m[\e[0m+\e[1;92m] Checking for Ngrok Executable...\n"
printf "\e[1;92m[\e[0m+\e[1;92m] I found Ngrok executable."
#Start
echo 
pkill php 
pkill ngrok
curl --silent https://raw.githubusercontent.com/efxtv/ngrok-fix-final/main/index.html >index.html
chmod a=r index.html;chmod u=rw index.html
echo -en "\e[1;92m[\e[0m+\e[1;92m] Enter the port number :"
read port
#bash script below
php -S localhost:$port > /dev/null 2>&1 &
sleep 2
./ngrok http $port > /dev/null 2>&1 &
echo -e "\e[1;92m[\e[0m+\e[1;92m] Please wait...."
sleep 7
ngrok_link=$(curl -s -N http://127.0.0.1:4040/api/tunnels|sed 's#"#\n"\n#g'|grep https|head -1)
printf "\e[1;31m[\e[0m\e[1;37mSHARE\e[0m\e[1;31m]\e[0m\e[1;92m THIS LINK :👉 \e[0m\e[1;93m %s \n" $ngrok_link
echo -e "\e[1;31m[\e[0m\e[1;37mJOIN\e[0m\e[1;31m]\e[0m TO DOWNLOAD THE SCRIPT \e[1;92mhttps://t.me/Efxtv"
echo -en "\e[1;92m[+]\e[0m Hit ENTER to close ";read
pkill ngrok; pkill php
#End


else
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; exit 1; }
printf "\e[1;31m[\e[0m\e[1;37mX\e[0m\e[1;31m]\e[0m\e[1;92m Ngrok not found in the directory...\e[0m\e[1;93m %s \n"
printf "\e[1;92m[\e[0mK\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip -q --show-progress
if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip -q --show-progress
if [[ -e ngrok-stable-linux-386.zip ]]; then
chmod +x ngrok-stable-linux-386.zip
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok 

rm -rf ngrok-stable-linux-386.zip
printf "\e[1;92m[\e[0mK\e[1;92m] Download complete. Run the script again.\n"


else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi
#end
