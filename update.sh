#!/bin/sh

echo "Updating vimrc ..."
cd ~/.vim/
git pull -q

echo "Updating plug-ins ..."
vim +PluginUpdate +qall

echo "done"
