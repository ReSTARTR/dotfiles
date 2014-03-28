#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

## bindkey
bindkey -e
#bindkey '\^' cdup

# color
autoload colors && colors

## alias
alias vi="vim"
alias ll="ls -l" #--color=auto"
alias his="history"
alias h="head"
alias t="tail"
alias tailf="tail -f"

## completion
autoload -U compinit
compinit
setopt COMPLETE_IN_WORD
zstyle ':completion:*:default' menu select=1

## functions
function cd() {builtin cd $@ && ls -v -F --color=auto}

## disable mail checking
#MAILCHECK=0

## automatically decide when to page a list of completions
#LISTMAX=0

## keep background processes at full speed
#setopt NOBGNICE

## never ever beep ever
#setopt NO_BEEP

## HUP
#setopt HUP
function cdup() {
  echo
  cd ..
  zle reset-prompt
}
zle -N cdup

zstyle ':completion:*:default' menu select=1

#if [ `uname` = "Darwin" ]; then
#    export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
#    alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#    alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#fi

