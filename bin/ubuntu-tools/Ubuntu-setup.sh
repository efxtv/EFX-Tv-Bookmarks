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
clear='\033[0m'

installgui(){
cd
apt update;apt upgrade
apt install sudo net-tools iputils-ping php python zip unzip wget curl git npm nano nodejs openjdk-8-jdk openjdk-8-jre
sudo atp-get update;sudo apt-get upgrade
curl -L -o $HOME/Tools.zip https://github.com/efxtv/EFX-Tv-Bookmarks/blob/main/bin/ubuntu-tools/Tools.zip?raw=true --progress-bar
unzip Tools.zip -d Tools > /dev/null 2>&1 &
sudo chmod +x $HOME/Tools/Tools/vnc/*
ln -s $HOME/Tools/Tools/vnc/list /usr/bin/
ln -s $HOME/Tools/Tools/vnc/start /usr/bin/
ln -s $HOME/Tools/Tools/vnc/stop /usr/bin/
ln -s $HOME/Tools/Tools/vnc/vnchelp /usr/bin/
clear
echo
vnchelp
}


installcli(){
cd
apt update;apt upgrade
apt install sudo net-tools iputils-ping php python zip unzip wget curl git npm nano nodejs openjdk-8-jdk openjdk-8-jre
sudo atp-get update;sudo apt-get upgrade
curl -L -o $HOME/Tools.zip https://github.com/efxtv/EFX-Tv-Bookmarks/blob/main/bin/ubuntu-tools/Tools.zip?raw=true --progress-bar
clear
echo Installed
}

echo -e "[${IGreen}01${clear}] CLI"
echo -e "[${IGreen}02${clear}] GUI"
echo -e "[${IGreen}03${clear}] APKTOOL"
echo -e "[${IGreen}00${clear}] EXIT"
echo -en "[${IGreen}IN${clear}] ──────[${IGreen}1${clear}]─[${IGreen}2${clear}]─[${IGreen}3${clear}]─[${IGreen}00${clear}]──── :"
read soun

if [[ $soun == "1" || $soun == "01" ]];
then
installcli
  
elif [[ $soun == "2" || $soun == "02" ]];
then
installgui
  
elif [[ $soun == "3" || $soun == "03" ]];
then
source <(curl -fsSL https://raw.githubusercontent.com/efxtv/npm/main/apktool/apktool-kali-ubuntu.sh)

elif [[ $soun == "0" || $soun == "00" ]];
then
echo okay
exit

else
echo "[ XX ] ARE YOU KIDDING ME? PLEASE TRY AGAIN"
fi
