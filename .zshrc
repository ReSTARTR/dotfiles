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
type compinit 2>&1 >/dev/null
if [ $? -ne 0 ]; then
  fpath=($DOTFILES/.zsh/src/zsh-completions/src $fpath)
  autoload -U compinit
fi
compinit -u

export PROMPT='%n@%m:%{$fg_bold[blue]%}%c%{$reset_color%} $(git_super_status)%(!.#.$) '
