#/bin/sh!
#install vim 
echo y | apt-get install vim 
echo y | apt-get install vim-scripts 
echo y | apt-get install vim-doc

# install cn vim-doc

# install ctags 
echo y | apt-get install ctags
#install install kernel source 
echo y | apt-get install kernel-package 
echo y | apt-get install fakeroot 

cd /usr/src

wget https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.15.10.tar.xz  

tar xvf linux-3.15.10.tar.xz 
cd linux-3.15.10
ctags -R *

# return root
cd /root 

mkdir .vim
cd .vim
mkdir plugin
mkdir doc

cd /root
#install vim自动补全——OmniCppComplete  omnicppcomplete
vim-addons install omnicppcomplete

# 标签浏览器Taglist
vim-addons install taglist


cp .vpsinstall/vim/vimrc .vimrc