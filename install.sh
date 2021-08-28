#!/usr/bin/env zsh -e
export DOTFILES=$(dirname $0)

if [ "$(uname)" = "Darwin" ]; then
  xcode-select --install
  if [ ! -f /usr/local/bin/brew ]; then
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
[ ! -L ~/.vimrc ] && ln -sf $DOTFILES/.vimrc ~/.vimrc
[ ! -L ~/.gvimrc ] && ln -sf $DOTFILES/.gvimrc ~/.gvimrc
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

# neovim
[ ! -d ~/.config ] && mkdir ~/.config
[ ! -f ~/.config/nvim ] && ln -sf ~/.config/nvim ~/.vim
[ ! -f ~/.config/nvim/init.vim ] && ln -sf ~/.vimrc ~/.config/nvim/init.vim

# zsh
if [ ! -d $DOTFILES/.zsh/src/zsh-git-prompt ]; then
  git clone https://github.com/olivierverdier/zsh-git-prompt.git $DOTFILES/.zsh/src/zsh-git-prompt
fi
if [ ! -d $DOTFILES/.zsh/src/completion ]; then
  mkdir -p $DOTFILES/.zsh/src/completion
fi
curl -s \
  https://raw.github.com/git/git/master/contrib/completion/git-completion.bash \
  -o $DOTFILES/.zsh/src/git-completion.bash
curl -s \
  https://raw.github.com/git/git/master/contrib/completion/git-completion.zsh \
  -o $DOTFILES/.zsh/_git
if [ ! -L ~/.zshrc ]; then
  ln -s $DOTFILES/.zshrc ~/.zshrc
fi

# go
GO_TOOLS="golang.org/x/tools/cmd/goimports
golang.org/x/tools/cmd/godoc
github.com/x-motemen/ghq"
which go >/dev/null
if [ $? -eq 0 ]; then
  for tool in $GO_TOOLS; do
    go install $tool@latest
  done
fi
