#!/bin/sh

if [ ! -f ~/.vimrc ]; then
    ln -s ~/dotfiles/.zshrc ~/.zshrc
fi
if [ ! -f ~/.screenrc ]; then
    ln -s ~/dotfiles/.screenrc ~/.screenrc
fi
if [ ! -f ~/.gitconfig ]; then
    ln -s ~/dotfiles/.gitconfig ~/.gitconfig
fi
if [ ! -f ~/.tmux.conf ]; then
    ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
fi
if [ ! -f ~/.vimrc ]; then
    ln -s ~/dotfiles/.vimrc ~/.vimrc
fi

if [ ! -d ~/.vim/bundle ]; then
    mkdir -p ~/.vim/bundle
fi
if [ ! -d ~/.vim/bundle/vundle ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
#vim -c BundleInstall
vim +BundleInstall +qall

if [ ! -d ~/.oh-my-zsh ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi


if [ ! -f ~/.zshrc ]; then
    ln -s ~/dotfiles/.zshrc ~/.zshrc
fi

if [ ! `which flake8` ]; then
    sudo easy_install flake8
fi
