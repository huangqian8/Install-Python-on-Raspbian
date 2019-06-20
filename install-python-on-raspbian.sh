#!/bin/bash

# Update source of Raspbian
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo bash -c "cat > /etc/apt/sources.list" <<EOF
deb http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ stretch main non-free contrib
deb-src http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ stretch main non-free contrib
EOF

# Update source of Raspbian
sudo cp /etc/apt/sources.list.d/raspi.list /etc/apt/sources.list.d/raspi.list.bak
sudo bash -c "cat > /etc/apt/sources.list.d/raspi.list" <<EOF
deb http://mirrors.tuna.tsinghua.edu.cn/raspberrypi/ stretch main
EOF

# Install Python 3.7.3
sudo apt-get update -y
sudo apt-get install build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev -y
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz
tar -xf Python-3.7.3.tar.xz
cd Python-3.7.3
./configure
make -j 4
sudo make altinstall
cd ..
sudo rm -rf Python-3.7.3
python3.7 -V

# Remove Python 3.5
sudo apt-get autoremove python3.5 -y
sudo ln -s /usr/local/bin/python3.7 /usr/bin/python3
sudo ln -s /usr/local/bin/pip3.7 /usr/bin/pip3

# Install Python Module
sudo apt-get install chromium-browser chromium-chromedriver -y
sudo pip3 install --upgrade pip
sudo pip3 install scrapy
sudo pip3 install requests
sudo pip3 install pycryptodome
sudo pip3 install fake-useragent
sudo pip3 install lxml
sudo pip3 install Pillow
sudo pip3 install selenium
sudo pip3 install rsa
sudo pip3 install Crypto

# Install scrapy-deltafetch
cd /usr/local/src
sudo wget http://download.oracle.com/berkeley-db/db-5.3.28.tar.gz
sudo tar -zxf db-5.3.28.tar.gz
cd db-5.3.28/build_unix
../dist/configure --prefix=/usr/local/berkeleydb --enable-cxx
sudo make install
sudo bash -c "cat >> /etc/ld.so.conf" <<EOF
/usr/local/berkeleydb/lib/
EOF
sudo ldconfig
cd /usr/local/src
sudo wget https://files.pythonhosted.org/packages/e9/fc/ebfbd4de236b493f9ece156f816c21df0ae87ccc22604c5f9b664efef1b9/bsddb3-6.2.6.tar.gz
sudo tar -zxf bsddb3-6.2.6.tar.gz
cd bsddb3-6.2.6
sudo python3 setup.py install --berkeley-db=/usr/local/berkeleydb
sudo pip3 install scrapy-deltafetch

# Chinese
sudo apt-get install ttf-wqy-zenhei -y
sudo apt-get install scim-pinyin -y
sudo raspi-config

# Reboot
sudo reboot
