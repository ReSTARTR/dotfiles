# dotfiles

- zsh
- vim
- tmux

## Install

Clone

    cd $HOME
    git clone git@github.com:ReSTARTR/dotfiles.git

Edit .zshrc dotfiles path.

    export DOTFILES = $HOME/dotfiles

Make some symbolic link.

    ln -s dotfiles/.zshrc $HOME/.zshrc
    ln -s dotfiles/.vimrc $HOME/.vimrc
    ln -s dotfiles/.tmux.conf $HOME/.tmux.conf

## Install vim plugins

Edit dotfiles/.vim/vundle.vimrc, and run in vim

    :BundleInstall

### Install plugins

- unite.vim
- neocomplcache
- nerdtree

## add some local settings

You can add local .zshrc if you want to add some settings.

    home/.zshrc

or

    office/.zshrc


If use [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)


    .zsh/oh-my-zsh.zshrc

