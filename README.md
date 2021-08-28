# dotfiles

for...

- zsh
- vim(macvim)
- tmux
- homebrew

## Install

```bash
cd $HOME
git clone git@github.com:ReSTARTR/dotfiles.git
cd dotfiles
./install.sh
```

## Install Mac Apps

```bash
cd ~/dotfiles
HOMEBREW_CASK_OPTS="--appdir=/Applications" brew bundle
```

## Install Visual Studio Code settings

Replace the setting files

ref: https://vscode-doc-jp.github.io/docs/getstarted/settings.html#設定ファイルの場所

Mac

```bash
CODEDIR=$HOME/Library/Application\ Support/Code/User
mv $CODEDIR/settings.json{,.back}
ln -s ~/dotfiles/.config/Code/User/setttings.json $CODEDIR/settings.json
mv $CODEDIR/keybindings.json{,.back}
ln -s ~/dotfiles/.config/Code/User/keybindingsMac.json $CODEDIR/keybindings.json
```

Linux

```bash
CODEDIR=$HOME/.config/Code/User
mv $CODEDIR/settings.json{,.back}
ln -s ~/dotfiles/.config/Code/User/setttings.json $CODEDIR/settings.json
mv $CODEDIR/keybindings.json{,.back}
ln -s ~/dotfiles/.config/Code/User/keybindingsLinux.json $CODEDIR/keybindings.json
```
