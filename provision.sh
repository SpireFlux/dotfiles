#!/bin/bash
# Run as root
NAME='provision_kali.sh'
TEMPDIR='/tmp/provision/'

# exit when any command fails
set -e


# Update update and upgrade
echo -e "*******************************************************************"
echo -e "${NAME} Start"
echo -e "*******************************************************************\n"
apt update -qq
apt upgrade -qq


# Setup Python Deps
apt build-dep python3

# Install with apt-get
echo -e "\n*******************************************************************"
echo -e "${NAME} Install Softare"
echo -e "*******************************************************************\n"

# add the universe repository (for gnome-tweak-tool)
apt-add-repository universe

apt-get install -qq \
    apt-transport-https \
    bash \ 
    build-essential \
    clang \
    cmake \
    curl \
    g++-multilib \
    gcc-multilib \
    git \
    gnome-tweak-tool \
    libbz2-dev \
    libc6-dev \
    libc6-dev-i386 \
    libffi-dev \
    liblzma-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    llvm \
    make \ 
    net-tools \
    nmap \
    python-openssl \
    python3-pip \
    software-properties-common \
    tk-dev \
    tmux \
    tree \
    ufw \
    vim \
    wget \
    xz-utils \
    zlib1g-dev \


# 	# Build and install a Python version from source.
# 	pyenv install 3.8.0







# # echo -e "\n*******************************************************************"
# # echo -e "${NAME} Add VSCODE Repo"
# # echo -e "*******************************************************************\n"
# # wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# # echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list



# wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
# sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"





# # echo -e "\n*******************************************************************"
# # echo -e "${NAME} Add Sublime Repo"
# # echo -e "*******************************************************************\n"
# # wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# # echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list


# # echo -e "\n*******************************************************************"
# # echo -e "${NAME} Add Nodejs repo "
# # echo -e "*******************************************************************\n"
# # curl -sL https://deb.nodesource.com/setup_15.x | bash -


# # echo -e "\n*******************************************************************"
# # echo -e "${NAME} Add yarn repo"
# # echo -e "*******************************************************************\n"
# # curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
# # echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list


# # echo -e "\n*******************************************************************"
# # echo -e "${NAME} Install subl, node, yarn"
# # echo -e "*******************************************************************\n"
# # apt-get update -qq
# # apt-get install -qq \
# #     sublime-text \
# #     nodejs \
# #     yarn \ 
# #     code \


# echo -e "\n*******************************************************************"
# echo -e "${NAME} Download and install chrome"
# echo -e "*******************************************************************\n"
# #wget -P ${TEMPDIR} https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# apt install ${TEMPDIR}/google-chrome-stable_current_amd64.deb


# # # Test installed items
# # echo -e "\n*******************************************************************"
# # echo -e "${NAME} Test software install"
# # echo -e "*******************************************************************\n"
# # echo "node:"
# # node --version

# # echo "npm:"
# # npm --version

# # echo "yarn:"
# # yarn --version

# # echo "Sublime text:"
# # subl --version


# # Install GoLang
# #echo -e "\n*******************************************************************"
# #echo -e "${NAME} Download and install go"
# #echo -e "*******************************************************************\n"
# #wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz

# #tar -C /usr/local -xzf go1.14.2.linux-amd64.tar.gz

# #export PATH=$PATH:/usr/local/go/bin


# NVM
# TODO: install NVM
#curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | sh
#source ~/.nvm/nvm.sh
#nvm install --lts
#nvm use --lts
#npm --version

# TODO: Configure and place dotfiles

# This might install clang?
#bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"


# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Possibly have to edit the path a bit?

