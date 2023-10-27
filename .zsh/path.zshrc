PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
[ -d /opt/homebrew/bin ] && PATH=/opt/homebrew/bin:$PATH
[ -d ~/go/bin ] && PATH=$HOME/go/bin:$PATH
[ -d ~/bin ] && PATH=$HOME/bin:$PATH
export PATH=$PATH
