#!/bin/bash
# Run as user
NAME='configure_kali.sh'

# exit when any command fails
set -e

# install oh-my-tmux
echo -e "\n*******************************************************************"
echo -e "${NAME} Clone oh-my-timux"
echo -e "*******************************************************************\n"
DIR="~/.tmux"
if [ ! -d "$DIR" ]; then
  	echo "tmux dir not exist"
	# cd
	# git clone https://github.com/gpakosz/.tmux.git
	# ln -s -f .tmux/.tmux.conf
	# cp .tmux/.tmux.conf.local .
else
	echo "${DIR} Already in place"
fi


# Clone dotfiles repo
echo -e "\n*******************************************************************"
echo -e "${NAME} Clone dotfiles"
echo -e "*******************************************************************\n"
DIR="~/dotfiles"
if [ ! -d "$DIR" ]; then
  	echo "Cloning dotfiles"
	cd
	git clone https://github.com/SpireFlux/dotfiles .dotfiles
else
	echo "${DIR} Already in place"
fi


echo -e "\n*******************************************************************"
echo -e "${NAME} Configuring tmux.conf.local"
echo -e "*******************************************************************\n"
cp dotfiles/tmux.conf.local ~/.tmux.conf.local


echo -e "\n*******************************************************************"
echo -e "${NAME} Configuring git setup"
echo -e "*******************************************************************\n"
cp dotfiles/gitconfig ~/.gitconfig
cp dotfiles/gitignore_global ~/.gitignore_global
cp dotfiles/gitmessage ~/.gitmessage


echo -e "\n*******************************************************************"
echo -e "${NAME} Configuring vimrc"
echo -e "*******************************************************************\n"
cp dotfiles/vimrc ~/.vimrc


echo -e "\n*******************************************************************"
echo -e "${NAME} Configuring bash_aliases"
echo -e "*******************************************************************\n"
cp dotfiles/bash_aliases ~/.bash_aliases


echo -e "\n*******************************************************************"
echo -e "${NAME} Configuring Sublime Preferences"
echo -e "*******************************************************************\n"
cp --remove-destination dotfiles/Preferences.sublime-settings  ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings


################################################################################
# source bashrc
################################################################################
source ~/.bashrc


# Install and configurue sublime text?
#https://stackoverflow.com/questions/19529999/add-package-control-in-sublime-text-3-through-the-command-line

# Adjust terminal preferences, aka terminal font from cmd line script?

# echo "10.10.10.151 sniper.htb" >> /etc/hosts
# Setup python and pip
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# python get-pip.py
