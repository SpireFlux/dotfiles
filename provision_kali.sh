#!/bin/bash
# Run as root
NAME='provision_kali.sh'

# exit when any command fails
set -e 


# Update update and upgrade
echo -e "*******************************************************************"
echo -e "${NAME} Start"
echo -e "*******************************************************************\n"
apt-get update -qq
apt-get upgrade -qq


# Install with apt-get
echo -e "\n*******************************************************************"
echo -e "${NAME} Install Softare"
echo -e "*******************************************************************\n"
apt-get install -qq \
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
    apt-transport-https \
    python3-pip \
    ufw

# Gather apt repos
echo -e "\n*******************************************************************"
echo -e "${NAME} Add Sublime Repo"
echo -e "*******************************************************************\n"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list


# Nodejs
echo -e "\n*******************************************************************"
echo -e "${NAME} Add Nodejs repo "
echo -e "*******************************************************************\n"
curl -sL https://deb.nodesource.com/setup_13.x | bash -


# Yarn
echo -e "\n*******************************************************************"
echo -e "${NAME} Add yarn repo"
echo -e "*******************************************************************\n"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list


# Install remining items
echo -e "\n*******************************************************************"
echo -e "${NAME} Install subl, node, yarn"
echo -e "*******************************************************************\n"
apt-get update -qq
apt-get install -qq \
    sublime-text \
    nodejs \
    yarn 


# Test installed items
echo -e "\n*******************************************************************"
echo -e "${NAME} Test software install"
echo -e "*******************************************************************\n"
echo "node:"
node --version

echo "npm:"
npm --version

echo "yarn:"
yarn --version

echo "Sublime text:"
subl --version


# install oh-my-tmux
# check if exisits?
echo -e "\n*******************************************************************"
echo -e "${NAME} Clone oh-my-timux"
echo -e "*******************************************************************\n"
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .


# check if exists?
# Clone dotfiles repo
echo -e "\n*******************************************************************"
echo -e "${NAME} Clone dotfiles"
echo -e "*******************************************************************\n"
git clone https://github.com/SpireFlux/dotfiles


################################################################################
# Configure tmux.conf.local
################################################################################
#wget https://gist.githubusercontent.com/SpireFlux/1cd39bc9b8c99f9a2eaadf0413e94307/raw/d879d98bf5090775fb98bc78354494e3bae774b3/.tmux.conf.local


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


# Adjust terminal preferences, aka terminal font from cmd line script?
