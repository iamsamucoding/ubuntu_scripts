#!/bin/bash

OUT_DIR=~/local
TEMP_DIR=./tmp

GIT_USERNAME=samuka
GIT_EMAIL=sbmmartins@gmail.com

LINK_ECLIPSE=http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/luna/SR2/eclipse-cpp-luna-SR2-linux-gtk-x86_64.tar.gz
LINK_MENDELEY=https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
LINK_PIP=https://bootstrap.pypa.io/get-pip.py

#-- create tmp dir
mkdir $OUT_DIR
mkdir $TEMP_DIR
rm -rf $TEMP_DIR/*

printf "\n---> Installing VIM\n"
sudo apt-get -y install vim

printf "\n---> Installing Cmake\n"
sudo apt-get -y install cmake

printf "\n---> Installing g++\n"
sudo apt-get -y install g++

printf "\n---> Color on GCC and g++\n"
sudo apt-get install colorgcc
sudo ln -s /usr/bin/colorgcc /usr/local/sbin/g++
sudo ln -s /usr/bin/colorgcc /usr/local/sbin/gcc

printf "\n---> Installing Git\n"
sudo apt-get install -y doxygen

printf "\n---> Installing Git\n"
sudo apt-get update
sudo apt-get -y install git
git config --global user.name $GIT_USERNAME
git config --global user.email $GIT_EMAIL
git config --global color.ui auto

printf "\n---> Installing SVN\n"
sudo apt-get -y install subversion libapache2-svn

printf "\n---> Installing Htop\n"
sudo apt-get -y install htop

printf "\n---> Installing Atlas, Lapack, and Blas\n"
sudo apt-get -y install liblapack-dev libblas-dev libatlas-base-dev

printf "\n---> Python Pip and Dev\n"
sudo apt-get -y install python-pip python-dev build-essential

printf "\n---> Installing Ipython\n"
sudo pip install ipython

printf "\n---> Installing Numpy\n"
sudo pip install numpy

printf "\n---> Installing Scipy\n"
sudo pip install scipy

printf "\n---> Installing Matplotlib\n"
sudo apt-get -y install python-matplotlib

printf "\n---> Installing Scikit-learn\n"
sudo pip install -U scikit-learn

printf "\n---> Installing Pillow\n"
sudo pip install Pillow

printf "\n---> Installing Cython\n"
sudo apt-get -y install cython

printf "\n---> Installing Eclipse C/C++\n"
wget $LINK_ECLIPSE -O $TEMP_DIR/eclipse.tar.gz
tar -xvf $TEMP_DIR/eclipse.tar.gz -C $OUT_DIR
sudo apt-get -y install -f
sudo ln -s $OUT_DIR/eclipse/eclipse /usr/bin/

printf "\n---> Installing Mendeley\n"
wget $LINK_MENDELEY -O $TEMP_DIR/mendeley.deb
sudo dpkg -i $TEMP_DIR/mendeley.deb
sudo apt-get -y install -f

printf "\n---> Installing Tex Live: It can take a long time.\n"
# https://www.tug.org/texlive/quickinstall.html
sudo rm -rf /usr/local/texlive/2014
sudo rm -rf ~/.texlive2014
wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz -O $TEMP_DIR/install-tl-unx.tar.gz
tar -xvf $TEMP_DIR/install-tl-unx.tar.gz -C $OUT_DIR
cd $OUT_DIR/install-tl* # the name can vary
sudo ./install-tl
# press i
printf "\nPATH=$PATH:/usr/local/texlive/2014/bin/i386-linux\n" >> ~/.bashrc
source ~/.bashrc
cd -
rm -rf $OUT_DIR/install-tl*

rm -rf $TEMP_DIR
