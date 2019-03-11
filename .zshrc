ZSH=$HOME/.oh-my-zsh
ZSH_THEME="candy"
HYPHEN_INSENSITIVE="true"
plugins=(z git colored-man-pages history-substring-search extract docker-compose)
source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/go/bin

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/node/latest/bin

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export VISUAL=vim

# 4k for Qt apps
export QT_SCREEN_SCALE_FACTORS=2

# sdk man wants to be the last executed profile script
source "$HOME/.sdkman/bin/sdkman-init.sh"
