#!/bin/sh

# Install vim plug-ins
vim +PluginInstall +qall

# Set github username for Gist
read -p "Please input your github username [default: $LOGNAME]: " GITHUBUSER
[ -z $GITHUBUSER ] && GITHUBUSER=$LOGNAME
git config --global github.user $GITHUBUSER

echo "Vimrc is setting down. Enjoy it!"
