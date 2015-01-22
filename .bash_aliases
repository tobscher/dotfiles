# Docker

alias d='docker'
alias da='docker attach'
alias dc='docker commit'                    # Clobbers GNU dc calculator tool
alias de='docker exec -t -i'
alias di='docker images'
alias dl='docker pull'
alias dp='docker push'
alias dps='docker ps'
alias dr='docker run'
alias dri='docker run -t -i'
alias ddr='docker run -d'
alias ds='docker stop'
alias drm='docker rm'
alias drmi='docker rmi'
alias drma='docker rm $(docker ps -a -q)'    # Remove all containers
alias dsa='docker stop $(docker ps -a -q)'  # Stop all containers

# Bash
alias ls="ls -G"
alias ..="cd .."
alias ...="cd ../.."

# Bundler
alias b="bundle"
alias be="b exec"
alias bi="b install"

# Git
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit'
alias gci='git commit -v'
alias gco='git checkout'
alias gd='git diff'
alias gl='git pull'
alias gm='git merge'
alias gp='git push'
alias gsh='git stash'
alias gst='git status'

# Vundle
alias vundle='vim +PluginInstall +qall'

# Node-Webkit
alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"
