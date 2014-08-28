#/bin/sh!

echo "update System"
apt-get update >log

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
chmod +x *.sh

echo "install zsh"
echo y | apt-get install zsh >>log 
./oh-my-zsh-install.sh >>log
cd ~/.vpsinstall
 
 echo "install ruby "
./installRuby.sh >>log
cd ~/.vpsinstall


echo "install && config  vim "
echo y | apt-get install vim >>log 
./vimConfig.sh >>log 

cd ~/.vpsinstall


#install zsh 



