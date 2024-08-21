#!/bin/sh
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB


# brew
alias bb="brew bundle"
# zsh
alias zshconfig="nvim ~/.zshrc"
alias sourceme="source ~/.zshrc"

# java
alias gw="./gradlew"
alias javamode="export SDKMAN_DIR="$HOME/.sdkman" && [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh""

# npm 
alias nodemode="source <(ng completion script)"

# nvim
alias nvimrc="nvim ~/.config/nvim"

# git
alias gpod="git pull origin dev"
alias gswitch="gh auth switch"

# docker
alias dcf="docker compose -f dev.docker-compose.yaml"
alias dcd="./docker/dcd.sh"

# kubectl
alias k=kubectl
alias kc=kubecolor
alias kk="kubectl kustomize"

# zellij
alias zls="zellij ls"
alias zka="zellij ka"
alias zda="zellij da"
alias za="zellij a"


# terraform
alias tf="terraform"
alias tfi="terraform init"
alias tfa="terraform apply"
alias tfp="terraform plan"
alias tfmode=""


# tools
alias cat="bat"
alias cd="z"
alias ls="eza -al"

# go
alias gtf="go test -json -v ./... 2>&1 | tee /tmp/gotest.log | gotestfmt"


alias v2g='function video_to_gif(){ ffmpeg -i "$1" "${1%.*}.gif" && gifsicle -O3 --lossy=80 --colors=64 --scale 0.8 "${1%.*}.gif" -o "${1%.*}.gif" && osascript -e "display notification \"${1%.*}.gif successfully converted and saved\" with title \"MOV2GIF SUCCESS!\""};video_to_gif'

