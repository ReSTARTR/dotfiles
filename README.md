# dotfiles

for...

- zsh
- vim/nvim/macvim
- tmux
- homebrew

## Requirements

- macOS: [Homebrew](https://brew.sh)

## Install

```bash
cd $HOME
git clone git@github.com:ReSTARTR/dotfiles.git
cd dotfiles
./install.sh
```

## Sudo with Touch ID

NOTE: Not sure it'll work on Apple Sillicon

see: https://github.com/fabianishere/pam_reattach#usage

- Edit /etc/pam.d/sudo.
- Put below into the head of /etc/pam.d/sudo

```/etc/pam.d/sudo
auth     optional     /opt/homebrew/lib/pam/pam_reattach.so
auth     sufficient   pam_tid.so
```
