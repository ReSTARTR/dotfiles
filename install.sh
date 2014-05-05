#!/bin/sh
DOTFILES="$( cd "$(dirname "$0")" ; pwd -P )"

[ ! -L ~/.screenrc   ] && ln -s $DOTFILES/.screenrc  ~/.screenrc
[ ! -L ~/.gitconfig  ] && ln -s $DOTFILES/.gitconfig ~/.gitconfig
[ ! -L ~/.tmux.conf  ] && ln -s $DOTFILES/.tmux.conf ~/.tmux.conf
[ ! -L ~/.gemrc      ] && ln -s $DOTFILES/.gemrc     ~/.gemrc

# vim
[ ! -L ~/.vimrc      ] && ln -s $DOTFILES/.vimrc ~/.vimrc
[ ! -L ~/.gvimrc     ] && ln -s $DOTFILES/.gvimrc ~/.gvimrc
[ ! -L ~/.vim/bundle ] && ln -s $DOTFILES/.dotfiles.vim/colors ~/.vim/colors
if [ ! -d $HOME/.vim/bundle ]; then
  mkdir -p $HOME/.vim/bundle
fi
if [ ! -d $HOME/.vim/bundle/vundle ]; then
  git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
fi
vim +BundleInstall +qall

# zsh
if [ ! -d $DOTFILES/.zsh/src/zsh-completions ]; then
  git clone git://github.com/zsh-users/zsh-completions.git $DOTFILES/.zsh/src/zsh-completions
fi
if [ ! -d $DOTFILES/.zsh/src/oh-my-zsh ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git $DOTFILES/.zsh/src/oh-my-zsh
fi
if [ ! -L ~/.zshrc ]; then
    ln -s $DOTFILES/.zshrc ~/.zshrc
fi
