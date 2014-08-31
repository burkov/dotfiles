ZSH=$HOME/.oh-my-zsh

ZSH_THEME="candy"

plugins=(z git gitignore rebar themes colored-man history-substring-search extract)

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
export EQC_PROXY=http://wwwgate0.mot.com:1080
