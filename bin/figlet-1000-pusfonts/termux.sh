#Calling file has 1000+ figlet fonts
#tar cv $PWD | xz -9 > $HOME/file.tar.xz; 
#tar xvf file.tar.xz -C /data/data/com.termux/files/usr/share/figlet

#Creating server
curl -L -o $HOME/Figlet-fonts-1000plus.tar.xz https://github.com/efxtv/figlet-fonts/blob/main/Figlet-fonts-1000plus.tar.xz?raw=true -s;tar xvf Figlet-fonts-1000plus.tar.xz -C /data/data/com.termux/files/usr/share/figlet
rm $HOME/Figlet-fonts-1000plus.tar.xz

curl -L -o $HOME/FILE1 https://raw.githubusercontent.com/efxtv/figlet-fonts/main/FILE1 -s
curl -L -o $HOME/FILE3 https://raw.githubusercontent.com/efxtv/figlet-fonts/main/FILE3 -s
INSTALL LINUX:

ls -1 /data/data/com.termux/files/usr/share/figlet|grep flf|awk '{print "figlet -f "$1" \"Hellow\";echo -e \"[[ --"$1"-- ]]\n\n\""}'|bash >$HOME/FILE2
cat FILE1 FILE2 FILE3 >index.html
rm FILE1 FILE2 FILE3 
php -S localhost:5555 > /dev/null 2>&1 &
echo ": http://localhost:5555"
echo ": Press enter to close \c"
read
pkill php
rm index.html


