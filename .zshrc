ZSH=$HOME/.oh-my-zsh
ZSH_THEME="candy"
plugins=(z pip sublime git brew gitignore rebar themes colored-man history-substring-search extract cabal)
source $ZSH/oh-my-zsh.sh

## exports
export PATH=$PATH:/usr/lib/lightdm/lightdm
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/bin
export PATH=$PATH:~/bin
export PATH=~/Library/Haskell/bin:$PATH
if [ "$COLORTERM" = "gnome-terminal" ]; then
    export TERM=xterm-256color
fi
export EDITOR=vim
export VISUAL=vim

# postgres
export PGHOST=localhost
export PGDATABASE=brk

## aliases
alias maek=make
alias makr=make

alias boclient-dev='~/Applications/BackOffice.app/Contents/Resources/boclient/bin/boclient \
-J-DdumpSecure=true \
-J-Dtradedb=http://tradedb.test.ghcg.com:8090/ \
-J-Daccount.summary.refresh.interval=5000'

alias boclient-abu='boclient-dev -J-Dbocore=http://abu.dev.ghcg.com/'
alias boclient-load='boclient-dev -J-Dbocore=http://bocore2.load.ghcg.com/'
alias boclient-local='boclient-dev -J-Dbocore=http://localhost:8080/'
