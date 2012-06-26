# dotfiles

- zsh
- vim
- tmux

## Install

Clone

    cd $HOME
    git clone git@github.com:ReSTARTR/dotfiles.git

## Install vim plugins

Install vundle

    mkdir -p ~/.vim/bundle
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Edit dotfiles/.vim/vundle.vimrc, and run in vim

    :BundleInstall

### Install plugins

- unite.vim
- neocomplcache
- nerdtree

## Install oh-my-zsh

If use [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

## add some local settings

You can add local .zshrc if you want to add some settings.

    home/.zshrc

or

    office/.zshrc


## Make some symbolic link.

    ln -s ~/dotfiles/.zshrc ~/.zshrc
    ln -s ~/dotfiles/.vimrc ~/.vimrc
    ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

