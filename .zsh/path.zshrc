# local PATHs
if [ -f $HOME/local/bin ]; then
    PATH=$HOME/local/bin:$PATH
fi

if [ -f $HOME/bin ]; then
    PATH=$HOME/bin:$PATH
fi

# Python
if [ -f $HOME/.pyenv ]; then
    export PYENV_ROOT=$HOME/.pyenv
    PATH=$PYENV_ROOT/bin:$PATH
    eval "$($PYENV_ROOT/bin/pyenv init -)"
fi

# Ruby
if [ -f /usr/local/opt/rbenv ]; then
    # homebrew
    export RBENV_ROOT=/usr/local/opt/rbenv
    eval "$(rbenv init -)"
elif [ -f $HOME/.rbenv ]; then
    export RBENV_ROOT=$HOME/.rbenv
    PATH=$RBENV_ROOT/bin:$PATH
    eval "$($RBENV_ROOT/bin/rbenv init -)"
fi
