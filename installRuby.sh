#/bin/sh!
cd ~/
echo "create ruby "
mkdir .ruby
cd ~/.ruby
apt-get remove ruby1.9.1 
#zlib lost 



echo y | apt-get install build-essential 
echo y | apt-get install bison 
echo y | apt-get install openssl 
echo y | apt-get install libreadline6 
echo y | apt-get install libreadline6-dev 
echo y | apt-get install curl 
echo y | apt-get install git-core 
echo y | apt-get install zlib1g 
echo y | apt-get install zlib1g-dev 
echo y | apt-get install libssl-dev 
echo y | apt-get install libyaml-dev 
echo y | apt-get install libsqlite3-0 
echo y | apt-get install libsqlite3-dev 
echo y | apt-get install sqlite3 
echo y | apt-get install libxml2-dev 
echo y | apt-get install libxslt-dev 
echo y | apt-get install autoconf 
echo y | apt-get install libc6-dev


echo "download ruby" 
wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz

tar xvf ruby-2.1.2.tar.gz
echo "configure & make & make install"
cd ruby-2.1.2
./configure 
make 
make install 

#cd ./ext/zlib
#ruby extconf.rb 
#make 
#make install 


# use 淘宝网gem源
gem sources --remove https://rubygems.org/
gem sources -a https://ruby.taobao.org/
gem sources -l

#install jekll
gem install therubyracer
gem install execjs
gem install jekll

#install rails
gem install rails
gem install jquery-rails
gem install spring
gem install sqlite3-ruby 
gem install sass-rails
gem install uglifier
gem install coffee-rails
gem install turbolinks
gem install jbuilder
gem install sdoc
