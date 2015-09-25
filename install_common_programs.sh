#!/bin/bash

OUT_DIR=~/local
TEMP_DIR=./tmp

USERNAME=samuka
EMAIL=sbmmartins@gmail.com

JAVA_VERSION=9

LINK_CHROME=https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
LINK_COPY=https://copy.com/install/linux/Copy.tgz
LINK_DROPBOX=https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_amd64.deb
LINK_FIREFOX=https://download.mozilla.org/?product=firefox-38.0-SSL&os=linux64&lang=pt-BR
LINK_PLAY_ON_LINUX=https://www.playonlinux.com/script_files/PlayOnLinux/4.2.7/PlayOnLinux_4.2.7.deb
LINK_POP_CORN=https://get.popcorntime.io/build/Popcorn-Time-0.3.7.2-Linux64.tar.xz
LINK_SKYPE=http://www.skype.com/go/getskype-linux-beta-ubuntu-64
LINK_SUBLIME=http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb
LINK_TEAM_VIEWER=http://download.teamviewer.com/download/teamviewer_i386.deb
LINK_YOUTUBE_TO_MP3=http://www.mediahuman.com/download/YouTubeToMP3.amd64.deb
LINK_WPS=http://kdl.cc.ksosoft.com/wps-community/download/a19/wps-office_9.1.0.4975~a19p1_amd64.deb

#-- create tmp dir
mkdir $OUT_DIR
mkdir $TEMP_DIR
rm -rf $TEMP_DIR/*

printf "\n---> Updating and Upgrading the system\n\n"
sudo apt-get -y update # -y puts yes in the terminal
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

printf "\n---> Installing Nice Fonts\n\n"
mkdir ~/.fonts
cp ./fonts/* ~/.fonts
cp ./wps/wps_symbol_fonts/* ~/.fonts

printf "\n---> Installing Chrome\n\n"
wget $LINK_CHROME -O $TEMP_DIR/chrome.deb
sudo dpkg -i $TEMP_DIR/chrome.deb
sudo apt-get -f install

printf "\n---> Installing Firefox\n\n"
sudo apt-get -y install firefox

printf "\n---> Installing Sublime\n"
wget LINK_SUBLIME -O $TEMP_DIR/sublime.deb
sudo dpkg -i $TEMP_DIR/sublime.deb

printf "\n---> Installing Terminator\n\n"
sudo add-apt-repository -y ppa:gnome-terminator
sudo apt-get -y update
sudo apt-get -y install terminator
mkdir ~/.config/terminator/
cp terminator/config ~/.config/terminator/

printf "\n---> Installing Tree\n"
sudo apt-get -y install tree

printf "\n---> Installing Eye of Gnome\n"
sudo apt-get -y install eog

printf "\n---> Installing VLC Media Player\n"
sudo apt-get -y install vlc

printf "\n---> Installing Support for Archive Formats and Restricted Extras\n"
sudo apt-get -y install unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip

printf "\n---> Install LibreOffice Suites\n"
sudo apt-get -y install libreoffice libreoffice-gtk libreoffice-style-sifr

printf "\n---> Installing Gimp\n"
sudo apt-get -y install gimp

printf "\n---> Installing Inkscape\n"
sudo apt-get -y install inkscape

printf "\n---> Installing Skype\n"
wget $LINK_SKYPE -O $TEMP_DIR/skype.deb
sudo dpkg -i $TEMP_DIR/skype.deb
sudo apt-get -y -f install

printf "\n---> Installing Kazam\n"
sudo add-apt-repository -y ppa:kazam-team/stable-series
sudo apt-get update
sudo apt-get -y install kazam

printf "\n---> Installing Cheese\n"
sudo apt-get -y install cheese

printf "\n---> Installing Team Viewer\n"
# it only works with the 32 bit version
wget $LINK_TEAM_VIEWER -O $TEMP_DIR/teamviewer.deb
sudo dpkg -i $TEMP_DIR/teamviewer.deb
sudo apt-get -y -f install

printf "\n---> Installing Deluge Torrent\n"
sudo add-apt-repository -y ppa:deluge-team/ppa
sudo apt-get -y update
sudo apt-get -y install deluge

printf "\n---> Installing Audacity\n"
sudo add-apt-repository -y ppa:audacity-team/daily
sudo apt-get update
sudo apt-get -y install audacity

printf "\n---> Installing Furius Iso Mount\n"
sudo apt-get -y install furiusisomount

printf "\n---> Alacarte - Menu editor\n"
sudo apt-get -y install alacarte

printf "\n---> KeePassX - Password Manager\n"
sudo apt-get -y install keepassx

printf "\n---> Xterm (PlayOnLinux dependency)\n"
sudo apt-get -y install xterm

printf "\n---> Wine 1.7 (PlayOnLinux dependency)\n"
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo apt-get -y upgrade
sudo apt-get -y wine1.7 winetricks

printf "\n---> Installing Play On Linux\n"
wget $LINK_PLAY_ON_LINUX -O $TEMP_DIR/playonlinux.deb
sudo dpkg -i $TEMP_DIR/playonlinux.deb
sudo apt-get -y -f install

printf "\n---> Installing TLP for Improve Battery Life and Reduce Overheating\n"
sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt-get update
sudo apt-get -y install tlp tlp-rdw
sudo tlp start

printf "\n---> Installing Dropbox\n"
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo add-apt-repository -y "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
sudo apt-get update
sudo apt-get -y install nautilus-dropbox

printf "\n---> Installing Copy Storage\n"
wget $LINK_COPY -O $TEMP_DIR/copy.tgz
tar -xvf $TEMP_DIR/copy.tgz -C $OUT_DIR

printf "\n---> Installing Pop Corn Time\n"
wget $LINK_POP_CORN -O $TEMP_DIR/popcorn.tar.xz
mkdir $OUT_DIR/Popcorn-Time
tar -xvf $TEMP_DIR/popcorn.tar.xz -C $OUT_DIR/Popcorn-Time

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

printf "\n---> Installing Plugin Flash Player and Pepper Flash\n"
sudo apt-get -y install flashplugin-installer pepperflashplugin-nonfree

printf "\n---> Installing Java\n"
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get -y update
sudo apt-get -y install oracle-java$JAVA_VERSION-installer

printf "\n---> Installing gMTP (Enables Mobile connection with PC)\n"
sudo apt-get -y install gmtp 

printf "\n##########################################################\n"

rm -rf $TEMP_DIR


