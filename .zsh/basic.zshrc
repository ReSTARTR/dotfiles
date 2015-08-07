# vim: set ft=conf

# bindkey
bindkey -e # emacs mode

# color
autoload colors && colors

# alias
alias vi="vim"
alias ll="ls -l --color=auto"

# Directory
function cdup() {
  echo
  cd ..
  zle reset-prompt
}
# zle -N cdup
# bindkey '\^' cdup        # cd ..
# alias pd="popd"          # move previous directory
# setopt AUTO_PUSHD        # pushd
# setopt PUSHD_IGNORE_DUPS # pushd
# function cd() {builtin cd $@ && ls -v -F --color=auto}

# completion
autoload -U compinit
compinit
setopt AUTO_PARAM_SLASH  # add tail /
setopt MAGIC_EQUAL_SUBST # complete "--prefx=/path/to"
setopt AUTO_LIST         # show completions
setopt COMPLETE_IN_WORD
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*'         completer _expand _complete _match _prefix _approximate _list _history
zstyle ':completion:*'         use-cache true
zstyle ':completion:*'         list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:default' menu select=1

LISTMAX=0       # automatically decide when to page a list of completions
setopt NOBGNICE # keep background processes at full speed
setopt NOHUP    # keep background process at logout
setopt NO_BEEP  # never ever beep ever
MAILCHECK=0     # disable mail checking
