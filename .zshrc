ZSH=$HOME/.oh-my-zsh

ZSH_THEME="candy"

plugins=(z safe-paste git gitignore rebar themes colored-man history-substring-search extract)

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
export PATH=$PATH:/opt/idea/bin
export PATH=$PATH:/opt/wireshark/bin

# bind P and N for EMACS mode
bindkey -M emacs '^[p' history-substring-search-up
bindkey -M emacs '^[n' history-substring-search-down

#EDITOR=~/bin/e
#VISUAL=~/bin/e
EDITOR=vim
VISUAL=vim
