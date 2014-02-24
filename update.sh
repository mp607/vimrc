#!/bin/sh

echo "Updating vundle ..."
cd ~/.vim/bundle/vundle/
git pull -q

vim +BundleUpdate +qall

echo "done"
