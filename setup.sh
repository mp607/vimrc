#!/bin/sh

# Install vim plug-ins
vim +PluginInstall +qall

# Set github username for Gist
read -p "Please input your github username [default: $LOGNAME]: " GITHUBUSER
[ -z $GITHUBUSER ] && GITHUBUSER=$LOGNAME
git config --global github.user $GITHUBUSER
echo "github.user is $GITHUBUSER now."

# Login in github for Gist
read -p "Login in github for Gist now? (Needed gist) (Y/n): " LOGIN
[ "${LOGIN}" == "Y" -o "${LOGIN}" == "y" ] && gist --login

echo "Vimrc is setting down. Enjoy it!"
echo ""
echo "Maybe you need to install ctags and jedi"
