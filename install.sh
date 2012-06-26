#!/usr/bin/env zsh


if [ ! -d ~/.vim/bundle ]; then
    mkdir -p ~/.vim/bundle
fi
if [ ! -d ~/.vim/bundle/vundle ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim -c BundleInstall
fi

if [ ! -d ~/.oh-my-zsh ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi


if [ ! -f ~/.zshrc ]; then
    ln -s ~/dotfiles/.zshrc ~/.zshrc
fi
if [ ! -f ~/.vimrc ]; then
    ln -s ~/dotfiles/.zshrc ~/.zshrc
fi
if [ ! -f ~/.screenrc ]; then
    ln -s ~/dotfiles/.screenrc ~/.screenrc
fi
