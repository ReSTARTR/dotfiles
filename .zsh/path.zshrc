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
    eval "$(rbenv init -)"
fi

# Go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# Node.js
export PATH=$HOME/node/bin:$PATH
