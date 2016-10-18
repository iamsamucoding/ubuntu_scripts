#!/bin/bash

OUT_DIR=~/local
TEMP_DIR=./tmp

LINK_SKYPE=http://www.skype.com/go/getskype-linux-beta-ubuntu-64
LINK_SUBLIME=https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
LINK_TEAM_VIEWER=https://download.teamviewer.com/download/teamviewer_i386.deb
LINK_YOUTUBE_TO_MP3=http://www.mediahuman.com/download/YouTubeToMP3.amd64.deb
LINK_WPS=http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb

#-- create tmp dir
mkdir $OUT_DIR
mkdir $TEMP_DIR
rm -rf $TEMP_DIR/*

# printf "\n---> Installing Nice Fonts\n\n"
# mkdir ~/.fonts
# cp ./fonts/* ~/.fonts

# printf "\n---> Terminal Story Configs\n"
# cp ./os/.inputrc ~/

# printf "\n---> Installing Sublime\n"
# wget $LINK_SUBLIME -O $TEMP_DIR/sublime.deb
# sudo dpkg -i $TEMP_DIR/sublime.deb
# sudo apt-get -y -f install

# printf "\n---> Installing Terminator\n\n"
# sudo add-apt-repository -y ppa:gnome-terminator
# sudo apt-get -y update
# sudo apt-get -y install terminator
# mkdir ~/.config/terminator/
# cp terminator/config ~/.config/terminator/

# printf "\n---> Installing Tree\n"
# sudo apt-get -y install tree

# printf "\n---> Installing Evince\n"
# sudo add-apt-repository ppa:gnome3-team/gnome3 
# sudo apt-get update
# sudo apt-get -y install evince

# printf "\n---> Installing PDF Mod\n"
# sudo apt-get -y install pdfmod

# printf "\n---> Installing Eye of Gnome\n"
# sudo apt-get -y install eog

# printf "\n---> Installing VLC Media Player\n"
# sudo apt-get -y install vlc

# printf "\n---> Installing Support for Archive Formats and Restricted Extras\n"
# sudo apt-get -y install unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip

# printf "\n---> Installing Skype\n"
# wget $LINK_SKYPE -O $TEMP_DIR/skype.deb
# sudo dpkg -i $TEMP_DIR/skype.deb
# sudo apt-get -y -f install

# printf "\n---> Installing Kazam\n"
# sudo add-apt-repository -y ppa:kazam-team/stable-series
# sudo apt-get update
# sudo apt-get -y install kazam

# printf "\n---> Installing Cheese\n"
# sudo apt-get -y install cheese

# printf "\n---> Installing Team Viewer\n"
# # it only works with the 32 bit version
# wget $LINK_TEAM_VIEWER -O $TEMP_DIR/teamviewer.deb
# sudo dpkg -i $TEMP_DIR/teamviewer.deb
# sudo apt-get -y -f install

# printf "\n---> Installing Audacity\n"
# sudo add-apt-repository -y ppa:audacity-team/daily
# sudo apt-get update
# sudo apt-get -y install audacity

# printf "\n---> Installing Furius Iso Mount\n"
# sudo apt-get -y install furiusisomount

# printf "\n---> Alacarte - Menu editor\n"
# sudo apt-get -y install alacarte

printf "\n---> KeePassX - Password Manager\n"
sudo apt-get -y install keepassx

printf "\n---> Installing YouTube To MP3\n"
wget $LINK_YOUTUBE_TO_MP3 -O $TEMP_DIR/youtube.deb
sudo dpkg -i $TEMP_DIR/youtube.deb
sudo apt-get -y -f install

printf "\n---> Installing WPS Office\n"
wget $LINK_WPS -O $TEMP_DIR/wps.deb
sudo dpkg -i $TEMP_DIR/wps.deb
sudo apt-get -y -f install

printf "\n---> Startup Disk Creator: USB Bootable\n"
sudo apt-get -y install usb-creator-gtk

printf "\n---> Installing Gimp\n"
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get -y install gimp

printf "\n---> Installing Inkscape\n"
sudo apt-get -y install inkscape

printf "\n---> Calibre\n"
sudo add-apt-repository ppa:n-muench/calibre2
sudo apt-get update
sudo apt-get -y install calibre
printf "\n---> Installing TLP for Improve Battery Life and Reduce Overheating\n"
sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt-get update
sudo apt-get -y install tlp tlp-rdw
sudo tlp start

printf "\n---> Installing gMTP (Enables Mobile connection with PC)\n"
sudo apt-get -y install gmtp 


printf "\n##########################################################\n"

rm -rf $TEMP_DIR


