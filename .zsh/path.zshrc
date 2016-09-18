# local PATHs
if [ -d $HOME/local/bin ]; then
    PATH=$HOME/local/bin:$PATH
fi

if [ -d $HOME/bin ]; then
    PATH=$HOME/bin:$PATH
fi

# Python
if [ -d $HOME/.pyenv ]; then
    export PYENV_ROOT=$HOME/.pyenv
    PATH=$PYENV_ROOT/bin:$PATH
    eval "$($PYENV_ROOT/bin/pyenv init -)"
fi

# Ruby
if [ -d /usr/local/opt/rbenv ]; then
    # homebrew
    export RBENV_ROOT=/usr/local/opt/rbenv
    eval "$(rbenv init -)"
elif [ -d $HOME/.rbenv ]; then
    export RBENV_ROOT=$HOME/.rbenv
    PATH=$RBENV_ROOT/bin:$PATH
    eval "$($RBENV_ROOT/bin/rbenv init -)"
fi

# Go
if type go 2>&1 > /dev/null; then
  export GOROOT=/usr/local/go
  export GOPATH=$HOME
  export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
fi
