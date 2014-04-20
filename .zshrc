export DOTFILES=~/dotfiles
fpath=($DOTFILES/.zsh/src/zsh-completions/src $fpath)

source $DOTFILES/.zsh/basic.zshrc
source $DOTFILES/.zsh/history.zshrc

[ -f $DOTFILES/office/.zshrc ] && source $DOTFILES/office/.zshrc

[ -f $DOTFILES/home/.zshrc ] && source $DOTFILES/home/.zshrc

[ -f $DOTFILES/.zsh/oh-my-zsh.zshrc ] && source $DOTFILES/.zsh/oh-my-zsh.zshrc

which go >/dev/null 2>&1
if [ $? -eq 0 ]; then
  GO_BIN_PATH=`which go`
  [ "$GOROOT" = "" ] && export GOROOT=${GO_BIN_PATH%/*}
  [ "$GOPATH" = "" ] && export GOPATH=$HOME/.go
fi

source $DOTFILES/.zsh/path.zshrc
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
which ag > /dev/null
if [ $? -eq 0 ]; then
  alias grep='ag'
fi
