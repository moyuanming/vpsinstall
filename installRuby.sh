#/bin/sh!
cd ~/
echo "create ruby "
mkdir .ruby
cd ~/.ruby
echo "download ruby" 
wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz

tar xvf ruby-2.1.2.tar.gz
echo "configure & make & make install"
cd ruby-2.1.2
./configure 
make 
make install 

cd 

