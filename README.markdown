# dotfiles

- zsh
- vim
- tmux

## Install

Clone

    git clone git@github.com:ReSTARTR/dotfiles.git

Edit .zshrc dotfiles path.

    export DOTFILES = path/to/dotfiles

Make some symbolic link.

    ln -s dotfiles/.zshrc $HOME/.zshrc
    ln -s dotfiles/.vimrc $HOME/.vimrc
    ln -s dotfiles/.tmux.conf $HOME/.tmux.conf

## add some local settings

You can add local .zshrc if you want to add some settings.

    home/.zshrc

or

    office/.zshrc


If use [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)


    .zsh/oh-my-zsh.zshrc

