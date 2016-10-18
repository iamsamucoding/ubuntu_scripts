#!/bin/bash

GIT_USERNAME=sbmmartins
GIT_EMAIL=sbmmartins@gmail.com

LINK_MENDELEY=https://www.mendeley.com/client/get/100-2/
LINK_XAMPP=https://www.apachefriends.org/xampp-files/5.6.15/xampp-linux-x64-5.6.15-1-installer.run
CLION=https://download.jetbrains.com/cpp/CLion-2016.2.2.tar.gz
INTELLIJ=https://download.jetbrains.com/idea/ideaIU-2016.2.5.tar.gz
PYCHARM=https://download.jetbrains.com/python/pycharm-professional-2016.2.3.tar.gz
RUBY_MINE=https://download.jetbrains.com/ruby/RubyMine-2016.2.4.tar.gz

OUT_DIR=~/local
TEMP_DIR=./tmp

mkdir $OUT_DIR
# mkdir $TEMP_DIR
# rm -rf $TEMP_DIR/*

# printf "\n---> Installing Screen\n"
# sudo apt-get -y install screen

# printf "\n---> Installing Java JDK\n"
# sudo add-apt-repository ppa:webupd8team/java
# sudo apt-get update
# sudo apt-get install -y oracle-java8-installer

# printf "\n---> Installing VIM\n"
# sudo apt-get -y install vim

# printf "\n---> Installing Cmake\n"
# sudo apt-get -y install cmake

# printf "\n---> Installing Clang\n"
# sudo apt-get -y install clang

# printf "\n---> Installing g++\n"
# sudo apt-get -y install g++

# printf "\n---> Installing Doxygen\n"
# sudo apt-get -y install doxygen

# printf "\n---> Color on GCC and g++\n"
# sudo apt-get -y install colorgcc
# sudo ln -s /usr/bin/colorgcc /usr/local/sbin/g++
# sudo ln -s /usr/bin/colorgcc /usr/local/sbin/gcc

# printf "\n---> Installing Lib PNG\n"
# sudo apt-get -y install libpng-dev

# printf "\n---> Installing ZLib\n"
# sudo apt-get -y install zlib1g-dev

# printf "\n---> Installing Git\n"
# sudo apt-get update
# sudo apt-get -y install git
# git config --global user.name $GIT_USERNAME
# git config --global user.email $GIT_EMAIL
# git config --global color.ui auto

# printf "\n---> Installing SVN\n"
# sudo apt-get -y install subversion

# printf "\n---> Installing Htop\n"
# sudo apt-get -y install htop

# printf "\n---> Installing Atlas, Lapack, and Blas\n"
# sudo apt-get -y install liblapack-dev libblas-dev libatlas-base-dev

# printf "\n---> Python Pip and Dev\n"
# sudo apt-get -y install python-pip python-dev build-essential

# printf "\n---> Installing Ipython\n"
# sudo pip install ipython

# printf "\n---> Installing Numpy\n"
# sudo pip install numpy

# printf "\n---> Installing Scipy\n"
# sudo pip install scipy

# printf "\n---> Installing Matplotlib\n"
# sudo apt-get -y install python-matplotlib

# printf "\n---> Installing Scikit-learn\n"
# sudo pip install -U scikit-learn

# printf "\n---> Installing Pillow\n"
# sudo pip install Pillow

# printf "\n---> Installing Cython\n"
# sudo apt-get -y install cython

# printf "\n---> Installing Mendeley\n"
# wget $LINK_MENDELEY -O $TEMP_DIR/mendeley.deb
# sudo dpkg -i $TEMP_DIR/mendeley.deb
# sudo apt-get -y install -f

# printf "\n---> CLion\n"
# wget $CLION -O $OUT_DIR/clion.tar.gz
# tar -zxvf $OUT_DIR/clion.tar.gz -C $OUT_DIR

# printf "\n---> Intellij\n"
# wget $INTELLIJ -O $OUT_DIR/intellij.tar.gz
# tar -zxvf $OUT_DIR/intellij.tar.gz -C $OUT_DIR

printf "\n---> PyCharm\n"
wget $PYCHARM -O $OUT_DIR/pycharm.tar.gz
tar -zxvf $OUT_DIR/pycharm.tar.gz -C $OUT_DIR

printf "\n---> RubyMine\n"
wget $RUBY_MINE -O $OUT_DIR/rubymine.tar.gz
tar -zxvf $OUT_DIR/rubymine.tar.gz -C $OUT_DIR



# printf "\n---> Installing Latex MK compiler\n"
# sudo apt-get -y install latexmk

# printf "\n---> Installing Tex Live: It can take a long time.\n"
# # https://www.tug.org/texlive/quickinstall.html
# sudo rm -rf /usr/local/texlive/2014
# sudo rm -rf ~/.texlive2014
# wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz -O $TEMP_DIR/install-tl-unx.tar.gz
# tar -xvf $TEMP_DIR/install-tl-unx.tar.gz -C $OUT_DIR
# cd $OUT_DIR/install-tl* # the name can vary
# sudo ./install-tl
# # press i
# printf "\nPATH=$PATH:/usr/local/texlive/2014/bin/i386-linux\n" >> ~/.bashrc
# source ~/.bashrc
# cd -
# rm -rf $OUT_DIR/install-tl*


# printf "\n---> Installing XAMPP\n"
# wget $LINK_XAMPP -O $TEMP_DIR/xampp.run
# sudo chmod +x $TEMP_DIR/xampp.run
# sudo ./$TEMP_DIR/xampp.run
# rm xampp.run

# printf "\n---> Installing Postgres\n"
# sudo apt-get -y install postgresql


# printf "\n##########################################################\n"

# rm -rf $TEMP_DIR

