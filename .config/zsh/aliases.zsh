# Command aliases
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias back='cd $OLDPWD'
alias c='clear'
alias cd..='cd ..'
alias egrep='egrep --colour=auto'
alias extip='curl icanhazip.com'
alias grep='grep --color=auto'
alias lsmount='mount |column -t'
alias ports='netstat -tulanp'
alias h='history -i 1'
alias history='history 1'
alias j='jobs -l'
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'
alias vim='nvim'
alias ls='ls --color'
alias ll='ls -l'
alias la='ls -la'
alias lt='ls -ltr'
alias zj='zellij a midas'
alias svim='sudo nvim'
alias docs='cd $HOME/midas/docs'
alias dot='cd $HOME/.dotfiles; ll -a'
alias zalias='vim $HOME/.config/zsh/aliases.zsh'
alias dr='docker run -ti --rm'
alias b='brew'
alias bu='brew upgrade'
alias nvedit='nvim $HOME/.dotfiles/.config/nvim/init.vim'

## Kubenetes
alias k='kubectl'
alias ka='kubectl apply -f'
alias kd='kubectl delete -f'
alias kx='kubectx'
alias d='kubectx midasd'
alias q='kubectx midasq'
alias p='kubectx midasp'
alias kn='kubens'
alias ocd='oc login --web --server=https://api.dev-intranet-10-wob.ocp.vwgroup.com:6443 && oc project midas-app-main && kubectx midasd=.'
alias ocq='oc login --web --server=https://api.dev-intranet-12-wob.ocp.vwgroup.com:6443 && oc project eamdm-app && kubectx midasq=.'
alias ocp='oc login --web --server=https://api.prod-intranet-10-wob.ocp.vwgroup.com:6443 && oc project midas-app-main && kubectx midasp=.'
alias uc='export USE_COLORS=yes'
alias midasd='k9s --context midasd'
alias midasq='k9s --context midasq'
alias midasp='k9s --context midasp'

## Git
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -d'
alias gbdc='git branch -D'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcm='git checkout master'
alias gcp='git cherry-pick'
alias gclo='git clone --recurse-submodules'
alias gs='git switch'
alias gss='git switch -c'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gma='git commit -am'
alias gmaa='git commit --amend'
alias gp='git push'
alias gpo='git push --set-upstream origin'
alias gcliff='git cliff -o CHANGELOG.md --no-verify'
alias gfp='git fetch --all -p'

## Midas
alias mi='cd $HOME/midas'
alias be='cd $HOME/midas/backend'
alias fe='cd $HOME/midas/frontend'
alias dv='cd $HOME/midas/devops'


if command -v colordiff > /dev/null 2>&1; then
    alias diff="colordiff -Nuar"
else
    alias diff="diff -Nuar"
fi

## get top process eating memory
alias mem5='ps auxf | sort -nr -k 4 | head -5'
alias mem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias cpu5='ps auxf | sort -nr -k 3 | head -5'
alias cpu10='ps auxf | sort -nr -k 3 | head -10'

## list largest directories (aka "ducks")
alias dir5='du -cksh * | sort -hr | head -n 5'
alias dir10='du -cksh * | sort -hr | head -n 10'

# autocomplete
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
source <(kubectl completion zsh)
complete -F __start_kubectl k
complete -C '/opt/homebrew/bin/aws_completer' aws
