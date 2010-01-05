#!/usr/bin/env zsh
#zshkit installer.
mydir=`dirname $0`
if [[ $mydir = . ]]; then
	mydir=`pwd`
fi
dest=$HOME

echo Installing from: $mydir

if [[ -a $HOME/.zshenv ]]; then
  echo 'Moving old .zshenv to .zshenv.myz.bkup. Delete it after.'
  mv $HOME/.zshenv $HOME/.zshenv.myz.bkup
fi

if [[ -a $HOME/.zshrc ]]; then
  echo 'Moving old .zshrc to .zshrc.myz.bkup. Delete it after.'
  mv $HOME/.zshrc $HOME/.zshrc.myz.bkup
fi
  
echo "Linking .zshenv..." 
ln -s $mydir/.zshenv $HOME/.zshenv
echo "Linking .zshrc..." 
ln -s $mydir/.zshrc $HOME/.zshrc

#be nice.
source $HOME/.zshenv
source $HOME/.zshrc