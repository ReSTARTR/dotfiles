# not use unicode

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}%{$fg[yellow]%}*%{$fg[blue]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

DATETIME='%D{%m/%d} %T'
USER='%n@%m'
DIR='%c/'
PROMPT='[${DATETIME}] %{$fg[$NCOLOR]%}%B${USER}%b%{$reset_color%}:%{$fg[blue]%}%B${DIR}%b%{$reset_color%} $(git_prompt_info)%(!.#.$) '
