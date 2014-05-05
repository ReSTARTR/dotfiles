ZSHRC="$(readlink $HOME/.zshrc)"
export DOTFILES="$( cd "$(dirname "$ZSHRC")"; pwd -P)"

fpath=($DOTFILES/.zsh/src/zsh-completions/src $fpath)

source $DOTFILES/.zsh/basic.zshrc
source $DOTFILES/.zsh/history.zshrc

if [ -f $DOTFILES/.zsh/oh-my-zsh.zshrc ]; then
  source $DOTFILES/.zsh/oh-my-zsh.zshrc
fi

export GOROOT="$(cd "$(dirname "$(which go)" )"/.. ; pwd )"
export GOPATH=$HOME/dev
