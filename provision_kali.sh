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


echo -e "\n*******************************************************************"
echo -e "${NAME} Add Sublime Repo"
echo -e "*******************************************************************\n"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list


echo -e "\n*******************************************************************"
echo -e "${NAME} Add Nodejs repo "
echo -e "*******************************************************************\n"
curl -sL https://deb.nodesource.com/setup_13.x | bash -


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

