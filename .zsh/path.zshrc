PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
[ -d /opt/homebrew/bin ] && PATH=/opt/homebrew/bin:$PATH
[ -d /usr/local/go/bin ] && PATH=/usr/local/go/bin:$PATH
[ -d ~/bin ] && PATH=$HOME/bin:$PATH
export PATH=$PATH
