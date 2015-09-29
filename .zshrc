export TERM=xterm-256color

# ls color
export LSCOLORS=${LSCOLORS:-gxfxcxdxbxegedabagacad} # mac/bsd
export LS_COLORS=${LS_COLORS:-di=01;36} # lynux

ZSHRC="$(readlink $HOME/.zshrc)"
export DOTFILES="$( cd "$(dirname "$ZSHRC")"; pwd -P)"

fpath=($DOTFILES/.zsh/src/zsh-completions/src $fpath)

source $DOTFILES/.zsh/basic.zshrc
source $DOTFILES/.zsh/history.zshrc
source $DOTFILES/.zsh/path.zshrc

if [ -f $DOTFILES/.zsh/oh-my-zsh.zshrc ]; then
  source $DOTFILES/.zsh/oh-my-zsh.zshrc
fi
source $DOTFILES/.zsh/peco.zshrc
