source $DOTFILES/.zsh/src/zsh-git-prompt/zshrc.sh

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_STAGED="|%{$fg[red]%}%{%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="|%{$fg[red]%}%{%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="|%{$fg[blue]%}%{+%G%}"
# ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%} "
# ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%} "
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}%{*%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{ %G%}"

type compinit 2>&1 >/dev/null
if [ $? -ne 0 ]; then
  fpath=($DOTFILES/.zsh $fpath)
  autoload -U compinit
fi
compinit -u

export PROMPT='%n@%m:%{$fg_bold[blue]%}%c%{$reset_color%} $(git_super_status)%(!.#.$) '
