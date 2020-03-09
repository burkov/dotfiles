export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="candy"
HYPHEN_INSENSITIVE="true"
plugins=(z extract git history-substring-search)
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR=vim

export PATH=$PATH:$HOME/go/bin

case "$OSTYPE" in
  darwin*)
    export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
    # ...
  ;;
  linux*)
    # ...
  ;;
esac
