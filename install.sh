#!/bin/sh

VIMFILES="$HOME/.vim"
VIMRC="$HOME/.vimrc"
GVIMRC="$HOME/.gvimrc"

DATE=`date "+%Y-%m-%d %H:%M:%S"`

[ -e $VIMRC ] && mv $VIMRC "$VIMRC.bak.$DATE" && echo "mv $VIMRC $VIMRC.bak.$DATE"
[ -e $VIMFILES ] && mv $VIMFILES "$VIMFILES.bak.$DATE" && echo "mv $VIMFILES $VIMFILES.bak.$DATE"

# Install vimrcs
echo "Installing vimrc ..."
git clone -q http://github.com/mp607/vimrc $VIMFILES

# Linking vimrc
ln -s $VIMFILES/vimrc $VIMRC
# ln -s $VIMFILES/gvimrc $GVIMRC

# undodir
mkdir $VIMFILES/undo

# Install vundle
echo "Installing vundle ..."
git clone -q http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# if Mac Install "Monaco-Powerline.otf"
#if [ `uname` = "Darwin" ]; then
	#git clone https://gist.github.com/1838072.git $VIMFILES
	#open "$VIMFILES/Monaco-Powerline.otf"
	#echo "You can delete 1838072 dir now"
#fi

echo "Download complete."
echo "Use \"vim +BundleInstall +qall\" command install all plug-ins."
echo "Or use ~/.vim/setup.sh to do more settings."
