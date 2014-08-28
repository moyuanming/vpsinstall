#/bin/sh!

echo "update System"
apt-get update

echo "install system  Prerequisite"

echo "install gcc & g++ "

echo y | apt-get install gcc 
echo y | apt-get install g++

echo "install && config git "

echo y | apt-get install git 
git config --global user.name "moyuanming"
git config --global user.email "mo_yuan_ming@126.com"


echo "git clone install "
git clone https://github.com/moyuanming/vpsinstall.git .vpsinstall
cd .vpsinstall
chmod +x *.sh

echo "install zsh"
echo y | apt-get install zsh
./oh-my-zsh-install.sh
cd ~/.vpsinstall
 


echo "install ruby "
./installRuby.sh
cd ~/.vpsinstall


echo "install && config  vim "
echo y | apt-get install vim
./vimConfig.sh

cd ~/.vpsinstall


#install zsh 



