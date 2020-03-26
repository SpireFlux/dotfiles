#!/bin/bash
# Run as root

# Update update and upgrade
apt-get update -y
apt-get upgrade -y 

# Install things with apt-get
sudo apt-get install -y \
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
    libc6-dev libc6-dev-i386 gcc-multilib g++-multilib 
    apt-transport-https



# ubuntu tweak tool add on
# For remapping caps lock to ctl
#
# sudo add-apt-repository ppa:trebelnik-stefina/ubuntu-tweak
# sudo apt update
# sudo apt install ubuntu-tweak


# Using Ubuntu
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs


# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
#echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
#Dev
echo "deb https://download.sublimetext.com/ apt/dev/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
#Update apt sources and install Sublime Text

sudo apt-get update
sudo apt-get install sublime-text


# Setup Tmux Conf
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# Setup git

# Create a new ssh key?
https://gitlab.com/help/ssh/README#generating-a-new-ssh-key-pair

# Setup python and pip

# Setup Go

# Setup Web
# Using Ubuntu
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs


curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
Add the Yarn APT repository to your system’s software repository list by typing:

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
Once the repository is added to the system, update the package list, and install Yarn, with:

sudo apt update
sudo apt install yarn






# install chrome?



