ZSH=$HOME/.oh-my-zsh

ZSH_THEME="candy"

plugins=(z pip git brew gitignore rebar themes colored-man history-substring-search extract cabal)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/lib/lightdm/lightdm
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/bin
export PATH=$PATH:~/bin

export PATH=$PATH:/opt/erlang/bin
export PATH=$PATH:/opt/rebar
export PATH=$PATH:/opt/idea/bin
export PATH=$PATH:/opt/wireshark/bin
export PATH=$PATH:/opt/neovim/bin

alias maek=make
alias makr=make

function erls() {
    erl -noshell -s $1 $2 $3 -s init stop
}

if [ "$COLORTERM" = "gnome-terminal" ]; then
    export TERM=xterm-256color
fi

EDITOR=vim
VISUAL=vim

alias boclient-dev='~/Applications/BackOffice.app/Contents/Resources/boclient/bin/boclient -J-DdumpSecure=true'
alias boclient-abu='boclient-dev -J-Dbocore=http://abu.dev.ghcg.com:80/ -J-Dtradedb=http://tradedb.test.ghcg.com:8090/ -J-Daccount.summary.refresh.interval=5000 -J-DdumpSecure=true'


export PGHOST=localhost
export PGDATABASE=brk
