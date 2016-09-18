#!/bin/sh -ex
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
[ ! -d ~/.vim/bundle ] && mkdir -p ~/.vim/bundle
[ ! -L ~/.vimrc      ] && ln -sf $DOTFILES/.vimrc ~/.vimrc
[ ! -L ~/.gvimrc     ] && ln -sf $DOTFILES/.gvimrc ~/.gvimrc
[ ! -L ~/.vim        ] && ln -sf $DOTFILES/.vim ~/.vim
if [ -F /tmp/dein-installer.sh ]; then
  rm /tmp/dein-installer.sh
fi
curl -s https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/dein-installer.sh
sh /tmp/dein-installer.sh ~/.vim/bundle/dein.vim
vim +'call dein#install()' +qall
if [ ! -f $HOME/.ctags ]; then
  wget https://raw.githubusercontent.com/mmorearty/elixir-ctags/master/.ctags -O $HOME/.ctags
fi
# neovim
[ ! -d ~/.config ] && mkdir ~/.config
[ ! -F ~/.config/nvim ] && ln -sf ~/.config/nvim ~/.vim
[ ! -F ~/.config/nvim/init.vim ] && ln -sf ~/.config/nvim/init.vim ~/.vimrc

# zsh
if [ ! -d $DOTFILES/.zsh/src/zsh-git-prompt ]; then
  git clone https://github.com/olivierverdier/zsh-git-prompt.git $DOTFILES/.zsh/src/zsh-git-prompt
fi
if [ ! -d $DOTFILES/.zsh/src/zsh-git-completion ]; then
  mkdir -p $DOTFILES/.zsh/completion
  wget -q https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -O $DOTFILES/.zsh/src/zsh-git-completion.bash
  wget -q https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -O $DOTFILES/.zsh/completion/_git
fi
if [ ! -L ~/.zshrc ]; then
    ln -s $DOTFILES/.zshrc ~/.zshrc
fi
