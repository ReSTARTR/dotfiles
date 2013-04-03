# local PATHs
if [ -f $HOME/local/bin ]; then
    PATH=$HOME/local/bin:$PATH
fi

if [ -f $HOME/bin ]; then
    PATH=$HOME/bin:$PATH
fi

# Python
if [ -f /opt/local/pyenv ]; then
    PYENV_ROOT=/opt/local/pyenv
    PATH=$PYENV_ROOT/bin:$PATH
elif [ -f $HOME/.pyenv ]; then
    PYENV_ROOT=$HOME/.pyenv
    PATH=$PYENV_ROOT/bin:$PATH
fi

# Ruby
if [ -f /opt/local/rbenv ]; then
    RBENV_ROOT=/opt/local/rbenv
    PATH=$RBENV_ROOT/bin:$PATH
elif [ -f $HOME/.rbenv ]; then
    RBENV_ROOT=$HOME/.rbenv
    PATH=$RBENV_ROOT/bin:$PATH
fi

# Go
if [ -f /opt/local/go ]; then
    export GOPATH=/usr/local/go
    PATH=$GOPATH/bin:$PATH
fi
