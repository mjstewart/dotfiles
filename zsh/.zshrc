# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(~/.zsh-zsh-completions/src $fpath)
rm -f ~/.zcompdump; compinit

TERM=xterm

# Aliases

[ -f "/home/matt/.ghcup/env" ] && source "/home/matt/.ghcup/env" # ghcup-env

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH=$PATH:~/.local/bin
PATH=$PATH:~/.ghcup/bin
PATH=$PATH:~/.cargo/bin
PATH=$PATH:/opt/go/bin
export GOPATH=~/go
PATH=$PATH:$GOPATH/bin

export FZF_DEFAULT_OPTS='--height 70% --border --layout=reverse'

eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

