ZSH=$HOME/.oh-my-zsh

ZSH_THEME="candy"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"
# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"
# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13
# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"
# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"
# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git gitignore rebar bundler gem rake ruby rvm debian themes autojump colored-man history-substring-search extract vundle pass)

source $ZSH/oh-my-zsh.sh
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:~/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
