#!/bin/bash

# LINK_MENDELEY=https://www.mendeley.com/client/get/100-2/
# LINK_XAMPP=https://www.apachefriends.org/xampp-files/5.6.15/xampp-linux-x64-5.6.15-1-installer.run
# CLION=https://download.jetbrains.com/cpp/CLion-2016.2.2.tar.gz
# INTELLIJ=https://download.jetbrains.com/idea/ideaIU-2016.2.5.tar.gz
# PYCHARM=https://download.jetbrains.com/python/pycharm-professional-2016.2.3.tar.gz
# RUBY_MINE=https://download.jetbrains.com/ruby/RubyMine-2016.2.4.tar.gz

# OUT_DIR=~/local
# TEMP_DIR=./tmp

# mkdir $OUT_DIR
# mkdir $TEMP_DIR
# rm -rf $TEMP_DIR/*

printf "\n---> Installing Screen\n"
sudo apt-get -y install screen

printf "\n---> Installing Java JDK\n"
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer

printf "\n---> Installing VIM\n"
sudo apt-get -y install vim

printf "\n---> Installing Cmake\n"
sudo apt-get -y install cmake

printf "\n---> Installing Clang\n"
sudo apt-get -y install clang

printf "\n---> Installing gcc-5\n"
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get -y install gcc-5 g++-5
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 60 --slave /usr/bin/g++ g++ /usr/bin/g++-5

printf "\n---> Color on GCC and g++\n"
sudo apt-get -y install colorgcc
sudo ln -s /usr/bin/colorgcc /usr/local/sbin/g++
sudo ln -s /usr/bin/colorgcc /usr/local/sbin/gcc

# printf "\n---> Installing g++\n"
# sudo apt-get -y install g++

printf "\n---> Installing Doxygen\n"
sudo apt-get -y install doxygen

# printf "\n---> Installing Lib PNG\n"
# sudo apt-get -y install libpng-dev

# printf "\n---> Installing ZLib\n"
# sudo apt-get -y install zlib1g-dev

printf "\n---> Installing SVN\n"
sudo apt-get -y install subversion

printf "\n---> Installing Htop\n"
sudo apt-get -y install htop

printf "\n---> Installing Atlas, Lapack, and Blas\n"
sudo apt-get -y install liblapack-dev libblas-dev libatlas-base-dev

printf "\n---> Installing Atlas, Lapack, and Blas\n"
sudo apt-get -y install python3-venv
python3 -m venv ~/yeah
source ~/yeah/bin/activate
echo "\n\nsource ~/yeah/bin/activate" >> ~/.bashrc


printf "\n##########################################################\n"

# rm -rf $TEMP_DIR

