#!/bin/sh -e
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
[ ! -L ~/.gitmessage.txt  ] && ln -s $DOTFILES/.gitmessage.txt ~/.gitmessage.txt
[ ! -L ~/.gemrc      ] && ln -s $DOTFILES/.gemrc     ~/.gemrc

# TMUX
if [ ! -L ~/.tmux.conf ]; then
  ln -s $DOTFILES/.tmux.conf ~/.tmux.conf
fi
if [ ! -d $DOTFILES/.tmux/src/tmux-powerline ]; then
  git clone https://github.com/erikw/tmux-powerline.git $DOTFILES/.tmux/src/tmux-powerline
fi

# vim
[ ! -L ~/.vim        ] && ln -sf $DOTFILES/.vim ~/.vim
[ ! -L ~/.vimrc      ] && ln -sf $DOTFILES/.vimrc ~/.vimrc
[ ! -L ~/.gvimrc     ] && ln -sf $DOTFILES/.gvimrc ~/.gvimrc
[ ! -d ~/.vim/bundles ] && mkdir -p ~/.vim/bundles
if [ -f /tmp/dein-installer.sh ]; then
  rm /tmp/dein-installer.sh
fi
curl -s \
  https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh \
  -o /tmp/dein-installer.sh
sh /tmp/dein-installer.sh ~/.vim/bundles
vim +'call dein#install()' +qall
vim +'LspInstallServer' +qall
if [ ! -f $HOME/.ctags ]; then
  curl -s \
    https://raw.githubusercontent.com/mmorearty/elixir-ctags/master/.ctags \
    -o $HOME/.ctags
fi
# neovim
[ ! -d ~/.config ] && mkdir ~/.config
[ ! -f ~/.config/nvim ] && ln -sf ~/.config/nvim ~/.vim
[ ! -f ~/.config/nvim/init.vim ] && ln -sf ~/.vimrc ~/.config/nvim/init.vim

# zsh
if [ ! -d $DOTFILES/.zsh/src/zsh-git-prompt ]; then
  git clone https://github.com/olivierverdier/zsh-git-prompt.git $DOTFILES/.zsh/src/zsh-git-prompt
fi
if [ ! -d $DOTFILES/.zsh/src/zsh-git-completion ]; then
  mkdir -p $DOTFILES/.zsh/completion
  curl -s \
    https://raw.github.com/git/git/master/contrib/completion/git-completion.bash \
    -o $DOTFILES/.zsh/src/zsh-git-completion.bash
  curl -s \
    https://raw.github.com/git/git/master/contrib/completion/git-completion.bash \
    -o $DOTFILES/.zsh/completion/_git
fi
if [ ! -L ~/.zshrc ]; then
    ln -s $DOTFILES/.zshrc ~/.zshrc
fi

# go
GO_TOOLS="golang.org/x/tools/cmd/goimports
golang.org/x/tools/cmd/godoc
github.com/x-motemen/ghq"
which go > /dev/null
if [ $? -eq 0 ]; then
  for tool in $GO_TOOLS; do
    go install $tool@latest
  done
fi
