ZSH=$HOME/.oh-my-zsh
ZSH_THEME="candy"
plugins=(sublime z git brew gitignore rebar go colored-man history-substring-search extract)
source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8

## exports
export JAVA_HOME=$(/usr/libexec/java_home)
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

# replace some BSD coreutils with GNU coreutils

if [[ $(uname) == 'Darwin' ]]; then
    alias rm=grm
    alias cp=`echo /usr/local/Cellar/coreutils/*/bin/gcp` # git plugin has alias gcp = git cherry-pick
    alias mv=gmv
    alias sed=gsed
    alias sort=gsort
    alias find=gfind
fi

## postgres
export PGHOST=localhost
export PGDATABASE=$(whoami)

## aliases
alias maek=make
alias makr=make

## exante aliases
# -J-Dtradedb=http://bocore.retail-stage.ghcg.com:8090/ \
# -J-Dtradedb=http://abu.dev.ghcg.com:8090/ \

alias boclient-any='~/Applications/BackOffice.app/Contents/Resources/boclient/bin/boclient -J-DdumpSecure=true -J-Daccount.summary.refresh.interval=5000'

alias boclient-retail='boclient-any -J-Dbocore=http://bocore.retail-stage.ghcg.com/' # -J-Dauthdb=http://localhost:8000/'
alias boclient-test='boclient-any -J-Dbocore=http://bocore.test.ghcg.com/' # -J-Dauthdb=http://localhost:8000/'
alias boclient-abu='boclient-any -J-Dbocore=http://abu.dev.ghcg.com/' # -J-Dauthdb=http://localhost:8000/'

#alias boclient-any='~/Applications/BackOffice.app/Contents/Resources/boclient/bin/boclient \
#-J-Dtradedb=http://tradedb.test.ghcg.com:8090/ \
#-J-DdumpSecure=true \
#-J-Daccount.summary.refresh.interval=5000 \
#-J-Dbocore=http://bocore2.load.ghcg.com'


#~/Applications/BackOffice.app/Contents/Resources/boclient/bin/boclient \
    #-J-DdumpSecure=true \
    #-J-Dtradedb=http://abu.dev.ghcg.com:8090/ \
    #-J-Daccount.summary.refresh.interval=5000 \
    #-J-Dbocore=http://abu.dev.ghcg.com/ \
    #-J-Dauthdb=https://authdb.test.ghcg.com:8080


m() { mosh $1 -- tmux a }
