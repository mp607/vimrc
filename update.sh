#!/bin/sh

echo "Updating vimrc ..."
cd ~/.vim/
git pull -q

echo "Updating vundle ..."
cd ~/.vim/bundle/vundle/
git pull -q

vim +BundleUpdate +qall

echo "done"
