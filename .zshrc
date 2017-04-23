ZSH=$HOME/.oh-my-zsh
ZSH_THEME="candy"

plugins=(mvn sublime z git gitignore colored-man history-substring-search extract docker-compose)

source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8

## exports
export PATH=$PATH:/usr/lib/lightdm/lightdm
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/bin
export PATH=$PATH:~/bin
export PATH=$PATH:~/anaconda/bin
export PATH=$HOME/.gem/ruby/2.0.0/bin:$PATH
export PATH=/opt/maven/bin:$PATH

## go lang vars
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#export GOROOT=/usr/local/opt/go/libexec
#export PATH=$PATH:$GOROOT/bin

## visual
export EDITOR=vim
export VISUAL=vim
export LESS="-iMSx4FXR"


## postgres
export PGHOST=localhost
export PGDATABASE=$(whoami)

## aliases
alias maek=make
alias makr=make

alias dc=docker-compose
alias d=docker

m() { mosh $1 -- tmux a }

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/abu/.sdkman"
[[ -s "/home/abu/.sdkman/bin/sdkman-init.sh" ]] && source "/home/abu/.sdkman/bin/sdkman-init.sh"
