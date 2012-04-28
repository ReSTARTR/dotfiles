export DOTFILES=$HOME/Dropbox/dotfiles

source $DOTFILES/.zshrc.basic
source $DOTFILES/.zshrc.history

[ -f $DOTFILES/.zshrc.office ] && source $DOTFILES/.zshrc.office

[ -f $DOTFILES/.zshrc.home ] && source $DOTFILES/.zshrc.home

[ -f $DOTFILES/.oh-my-zsh.sh ] && source $DOTFILES/.zshrc.oh-my-zsh

export PATH=$PATH
