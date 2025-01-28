export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
# ZSH_THEME="awesomepanda"

# zsh-autosuggestions
# zsh-autocomplete
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

# User configuration


######################### Aliases #################################
######### Personal ###########

alias cdsrc="cd ~/source"
alias cdown="cd ~/Downloads"
alias py ="python3"
alias my-ip="curl ifconfig.me"

######################### Env #####################################

export PATH=$PATH:$HOME/shell-programs

# Dotnet
export DOTNET_ROOT="$(dirname $(which dotnet))"
export PATH=$PATH:$DOTNET_ROOT

export PATH=$PATH:"/usr/local/texlive/2024/bin/x86_64-linux" # Latex

export PATH=/usr/bin:$PATH

export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

