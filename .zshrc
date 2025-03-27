export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git docker zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

######################### Aliases #################################


alias ls="eza --long --git --color=always --icons=always --no-filesize --no-time --no-user --no-permissions"
alias lst="eza --long --git --color=always --icons=always  --tree --level=2 --no-filesize --no-time --no-user --no-permissions"
alias lsl="eza --long --git --color=always --icons=always"
alias cat="batcat --style=plain --color=always"
alias zshconf="nvim ~/.zshrc && source ~/.zshrc"
alias zshsource="source ~/.zshrc"

alias cdsrc="cd ~/source"
alias cdown="cd ~/Downloads"
alias py="python3"


######################### Env #####################################
export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:~/programs
export PATH=$PATH:~/programs/firefox/firefox-bin
export PATH=$PATH:$DOTNET_ROOT
export PATH=$PATH:$JAVA_HOME
export PATH=$PATH:"/usr/local/texlive/2024/bin/x86_64-linux"

export ATK_KEY="~/.ssh/.keys/keypair-aaatokens.pem"
export ATK_ADMIN="$HOME/source/work/aaatokens-marketplace-frontend-admin"
export ATK_BE="$HOME/source/work/aaatokens-marketplace-backend"
export ATK_FE="$HOME/source/work/aaatokens-marketplace-frontend"
export ATK_DOCS="$HOME/source/work/aaatokens-marketplace-docs"
export ATK_SCRIPTS="$HOME/source/work/aaatokens-marketplace-scripts"

export PATH=/usr/bin:$PATH


export DOCKER_HOST=unix:///var/run/docker.sock




## Add All Jetbrains apps to the Path 
#so we can open the from the console. e.g. rider, webstrom ....

for bin_dir in $(find '${HOME}/.local/share/JetBrains/Toolbox/apps' -maxdepth 2 -type d -name 'bin')
    do
        export PATH=$PATH:$bin_dir
    done

######################### Conf #####################################
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Conda
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

# FZF


export FZF_DEFAULT_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'batcat -n --color=always {}'
"

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:#d0d0d0,fg+:#d0d0d0,bg:#121212,bg+:#262626
  --color=hl:#5f87af,hl+:#5fd7ff,info:#afaf87,marker:#87ff00
  --color=prompt:#d7005f,spinner:#af5fff,pointer:#af5fff,header:#87afaf
  --color=border:#262626,label:#aeaeae,query:#d9d9d9
  --border="rounded" --border-label="" --preview-window="border-rounded" --prompt="> "
  --marker=">" --pointer="◆" --separator="─" --scrollbar="│"'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
