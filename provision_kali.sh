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
wget https://gist.githubusercontent.com/SpireFlux/1cd39bc9b8c99f9a2eaadf0413e94307/raw/d879d98bf5090775fb98bc78354494e3bae774b3/.tmux.conf.local


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






