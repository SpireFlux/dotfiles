#!/bin/bash
# Run as root

################################################################################
# Update update and upgrade
################################################################################
apt-get update -y
apt-get upgrade -y

################################################################################
# Install with apt-get
################################################################################
apt-get install -y \
    build-essential \
    net-tools \
    vim \
    git \
    tmux \
    curl \
    wget \
    clang \
    cmake \
    nmap \
    libc6-dev libc6-dev-i386 gcc-multilib g++-multilib \
    apt-transport-https
    python3-pip
    ufw

################################################################################
# Gather apt repos
# Sublime Text
################################################################################
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/dev/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

################################################################################
# Nodejs
################################################################################
curl -sL https://deb.nodesource.com/setup_13.x | bash -
# apt-get install -y nodejs

################################################################################
# Yarn
################################################################################
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

################################################################################
# Install remining items
################################################################################
apt-get update -y
apt-get install -y \
    sublime-text
    nodejs
    yarn

################################################################################
# Install Chrome
################################################################################
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb

################################################################################
# Setup Tmux
# install oh-my-tmux
################################################################################
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .


################################################################################
# Configure tmux.conf.local
################################################################################
# Pull in tmux.conf.local

################################################################################
# Configure Git
################################################################################
# Pull in .gitconfig
# Pull in .gitignore
# Pull in .gitmessage


################################################################################
# Configure VIM
################################################################################
# Pull in .vimrc


################################################################################
# Configure bashrc
################################################################################
# Setup python and pip
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# python get-pip.py



# ubuntu tweak tool add on
# For remapping caps lock to ctl
#
# sudo add-apt-repository ppa:trebelnik-stefina/ubuntu-tweak
# sudo apt update
# sudo apt install ubuntu-tweak




