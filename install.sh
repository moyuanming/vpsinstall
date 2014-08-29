#/bin/sh!

echo "update System"
apt-get update 
echo y | apt-get upgrade

echo "install system  Prerequisite"

echo "install gcc & g++ "

echo y | apt-get install gcc  >>log
echo y | apt-get install g++  >>log

echo "install && config git "

echo y | apt-get install git  >>log 
git config --global user.name "moyuanming"
git config --global user.email "mo_yuan_ming@126.com"


echo "git clone install "
git clone https://github.com/moyuanming/vpsinstall.git .vpsinstall
cd .vpsinstall
git checkout gh-pages 
chmod +x *.sh

#install db
echo y | apt-get install sqlite3
echo y | apt-get install libsqlite3-dev
 
 echo "install ruby "
./installRuby.sh 
cd ~/.vpsinstall


echo "install && config  vim "
echo y | apt-get install vim >>log 
./vimConfig.sh 

cd ~/.vpsinstall


echo "install zsh"
echo y | apt-get install zsh >>log 
./oh-my-zsh-install.sh >>log
cd ~/.vpsinstall



