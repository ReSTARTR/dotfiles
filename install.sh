#!/bin/sh
export DOTFILES=$HOME/dotfiles

# Check requirements
_REQUIREMENTS="zsh vim git"
for cmd in $_REQUIREMENTS; do
  type $cmd 2> /dev/null 1>/dev/null
  if [ $? -ne 0 ]; then
     echo "$cmd must be installed"; exit
  fi
done

# Check current shell
# ref: http://tkuchiki.hatenablog.com/entry/2014/05/08/222135
_PID=$$
_PPID=$(ps -o ppid -p $_PID | tail -n 1);
if ps -p $_PPID | grep -qa zsh; then
  true
else
  echo "You must change loginshell to zsh"; exit
fi

[ ! -L ~/.gitconfig  ] && ln -s $DOTFILES/.gitconfig ~/.gitconfig
[ ! -L ~/.gemrc      ] && ln -s $DOTFILES/.gemrc     ~/.gemrc

# TMUX
if [ ! -L ~/.tmux.conf ]; then
  ln -s $DOTFILES/.tmux.conf ~/.tmux.conf
fi
if [ ! -d $DOTFILES/.tmux/src/tmux-powerline ]; then
  git clone https://github.com/erikw/tmux-powerline.git $DOTFILES/.tmux/src/tmux-powerline
fi

# vim
[ ! -L ~/.vimrc      ] && ln -s $DOTFILES/.vimrc ~/.vimrc
[ ! -L ~/.gvimrc     ] && ln -s $DOTFILES/.gvimrc ~/.gvimrc
[ ! -L ~/.vim/colors ] && ln -s $DOTFILES/.vim/colors ~/.vim/colors
if [ ! -d $HOME/.vim/bundle ]; then
  mkdir -p $HOME/.vim/bundle
fi
if [ ! -d $HOME/.vim/bundle/neobundle.vim ]; then
  git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
fi
vim +NeoBundleInstall +qall
if [ ! -f $HOME/.ctags ]; then
  wget https://raw.githubusercontent.com/mmorearty/elixir-ctags/master/.ctags -O $HOME/.ctags
fi

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
