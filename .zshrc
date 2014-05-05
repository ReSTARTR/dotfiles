self=${0:a}
if [ -L $self ]; then
  self=$(readlink $self)
fi
export DOTFILES=$(dirname ${self:0})
fpath=($DOTFILES/.zsh/src/zsh-completions/src $fpath)

source $DOTFILES/.zsh/basic.zshrc
source $DOTFILES/.zsh/history.zshrc

if [ -f $DOTFILES/.zsh/oh-my-zsh.zshrc ]; then
  source $DOTFILES/.zsh/oh-my-zsh.zshrc
fi

#source $DOTFILES/.zsh/path.zshrc
