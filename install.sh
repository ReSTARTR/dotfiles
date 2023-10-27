#!/usr/bin/env zsh -e
export DOTFILES="$(cd "$(dirname $0)"; pwd -P)"

if [ "$(uname)" = "Darwin" ]; then
  if [ ! -f /opt/homebrew/bin/brew ]; then
    echo "Install homebrew => https://brew.sh"
    exit 1
  fi
  brew bundle
fi

[ ! -L ~/.gitconfig ] && ln -s $DOTFILES/.gitconfig ~/.gitconfig
[ ! -L ~/.gitmessage.txt ] && ln -s $DOTFILES/.gitmessage.txt ~/.gitmessage.txt
[ ! -L ~/.ctags ] && ln -s $DOTFILES/.ctags ~/.ctags

# TMUX
if [ ! -L ~/.tmux.conf ]; then
  ln -s $DOTFILES/.tmux.conf ~/.tmux.conf
fi
if [ ! -d $DOTFILES/.tmux/src/tmux-powerline ]; then
  git clone https://github.com/erikw/tmux-powerline.git $DOTFILES/.tmux/src/tmux-powerline
fi

# vim
[ ! -L ~/.vim ] && ln -sf $DOTFILES/.vim ~/.vim
[ -f /tmp/dein-installer.sh ] && rm /tmp/dein-installer.sh
curl -s \
  https://raw.githubusercontent.com/Shougo/dein-installer.vim/main/installer.sh \
  -o /tmp/dein-installer.sh
sh /tmp/dein-installer.sh ~/.vim/bundle --use-vim-config
[ ! -L ~/.vimrc ] && ln -sf $DOTFILES/.vimrc ~/.vimrc
vim +'call dein#install()' +qall

# zsh
if [ ! -d $DOTFILES/.zsh/src/zsh-git-prompt ]; then
  git clone https://github.com/olivierverdier/zsh-git-prompt.git $DOTFILES/.zsh/src/zsh-git-prompt
fi
if [ ! -d $DOTFILES/.zsh/src/completion ]; then
  mkdir -p $DOTFILES/.zsh/src/completion
fi
curl -s \
  https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash \
  -o $DOTFILES/.zsh/src/git-completion.bash
curl -s \
  https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh \
  -o $DOTFILES/.zsh/_git
if [ ! -L ~/.zshrc ]; then
  ln -s $DOTFILES/.zshrc ~/.zshrc
fi

[ ! -d ~/Works ] && mkdir ~/Works
