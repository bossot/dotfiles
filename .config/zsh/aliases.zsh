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
alias ssha='eval $(ssh-agent) && ssh-add'
alias vim='nvim'
alias svim='sudo nvim'
alias k='kubectl'
alias ka='kubectl apply -f'
alias kd='kubectl delete -f'
alias kx='kubectx'
alias kn='kubens'
alias ls='ls --color'
alias ll='ls -l'
alias la='ls -la'
alias lt='ls -ltr'
alias lz='lz_cli -a 790246756635,080911193369,297108121170,471613252402,238443313446,410603543005,302046462352,221206552823,718639658456,862397423280,491274160107 -u $LOGNAME -totp'
alias zj='zellij a midas'
alias ocd='oc login --web --server=https://api.dev-intranet-10-wob.ocp.vwgroup.com:6443 && oc project midas-app-main && kubectx midasd=.'
alias ocq='oc login --web --server=https://api.dev-intranet-12-wob.ocp.vwgroup.com:6443 && oc project eamdm-app && kubectx midasq=.'
alias ocp='oc login --web --server=https://api.prod-intranet-10-wob.ocp.vwgroup.com:6443 && oc project midas-app-main && kubectx midasp=.'
alias g='git'
alias gcl='git clone'
alias gs='git switch'
alias gl='git pull'
alias ga='git add .'
alias gm='git commit -am'
alias gp='git push'
alias gc='git cliff -o CHANGELOG.md'
alias gco='git checkout --orphan'
alias gfp='git fetch --all -p'
alias oku='cd $HOME/midas/okteto; okteto up'
alias okd='cd $HOME/midas/okteto; okteto down'
alias mi='cd $HOME/midas'
alias be='cd $HOME/midas/backend'
alias fe='cd $HOME/midas/frontend'
alias dv='cd $HOME/midas/devops'
alias zalias='vim $HOME/.config/zsh/aliases.zsh'
alias dr='docker run -ti --rm'
alias b='brew'
alias bu='brew upgrade -f'
alias uc='export USE_COLORS=yes'
alias midasd='k9s --context midasd'
alias midasq='k9s --context midasq'
alias midasp='k9s --context midasp'

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
