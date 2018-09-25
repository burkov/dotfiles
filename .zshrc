ZSH=$HOME/.oh-my-zsh
ZSH_THEME="candy"
HYPHEN_INSENSITIVE="true"

plugins=(z git colored-man history-substring-search extract docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration
export LC_ALL=en_US.UTF-8

export PATH=$PATH:$HOME/bin:$HOME/.local/bin
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
export VISUAL=nvim
# export LESS="-iMSx4FXR"

alias dc=docker-compose
alias d=docker

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="/home/abu/.sdkman"
# [[ -s "/home/abu/.sdkman/bin/sdkman-init.sh" ]] && source "/home/abu/.sdkman/bin/sdkman-init.sh"
