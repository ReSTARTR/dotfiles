## history

setopt APPEND_HISTORY
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000

setopt extended_history
setopt hist_ignore_dups
setopt hist_reduce_blanks

## for sharing history between zsh processes
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

function history-all { history -E 1 }
