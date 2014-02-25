#!/bin/sh

echo "Updating vimrc ..."
cd ~/.vim/
git pull -q

echo "Updating plug-ins ..."
vim +BundleUpdate +qall

echo "done"
