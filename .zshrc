export TERM=xterm-256color

# ls color
export LSCOLORS=${LSCOLORS:-gxfxcxdxbxegedabagacad} # mac/bsd
export LS_COLORS=${LS_COLORS:-di=01;36} # lynux

ZSHRC="$(readlink $HOME/.zshrc)"
export DOTFILES="$( cd "$(dirname "$ZSHRC")"; pwd -P)"

source $DOTFILES/.zsh/basic.zshrc
source $DOTFILES/.zsh/history.zshrc
source $DOTFILES/.zsh/path.zshrc
source $DOTFILES/.zsh/peco.zshrc
source $DOTFILES/.zsh/git-prompt.zshrc
if [ "$(uname)" = "Darwin" ]; then
  source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
fi
