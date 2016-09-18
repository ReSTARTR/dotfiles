#!/usr/bin/env bash

LIST=""

# essentials
LIST=$LIST:pstree
LIST=$LIST:tree
LIST=$LIST:wget
LIST=$LIST:htop
LIST=$LIST:nmap
LIST=$LIST:jq
LIST=$LIST:ghq
LIST=$LIST:peco
LIST=$LIST:zsh
LIST=$LIST:tmux
LIST=$LIST:vim
LIST=$LIST:neovim/neovim/neovim
# etc
LIST=$LIST:awscli
LIST=$LIST:hugo
LIST=$LIST:grsync # = rsync
brew tap jlhonora/lsusb
LIST=$LIST:lsusb

# qmk_firmware
brew tap osx-cross/avr
LIST=$LIST:avr-libc
LIST=$LIST:teensy_loader_cli

for pkg in `echo $LIST | sed s/:/\ /g`; do
  brew install $pkg
done

# Caskroom
brew tap caskroom/cask
[ ! -d /Applications/Amethyst.app/ ] && brew cask install amethyst
