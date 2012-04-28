autoload colors && colors

#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

alias vi="vim"
alias ll="ls -l" #--color=auto"
alias his="history"
alias h="head"
alias t="tail"
alias tailf="tail -f"

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

bindkey -e

function cd() {builtin cd $@ && ls -v -F --color=auto}

## disable mail checking
#MAILCHECK=0

## automatically decide when to page a list of completions
#LISTMAX=0

## keep background processes at full speed
#setopt NOBGNICE

## never ever beep ever
#setopt NO_BEEP

## restart running processes on exit
#setopt HUP
function cdup() {
echo
cd ..
zle reset-prompt
}
zle -N cdup
bindkey '\^' cdup

zstyle ':completion:*:default' menu select=1
