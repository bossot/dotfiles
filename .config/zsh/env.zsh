eval "$(starship init zsh)"

HOMEBREW_CELLAR=/opt/homebrew/Cellar
HOMEBREW_PREFIX=/opt/homebrew
HOMEBREW_REPOSITORY=/opt/homebrew

LDFLAGS="-L/opt/homebrew/opt/mysql-client/lib"
CPPFLAGS="-I/opt/homebrew/opt/mysql-client/include"

NPM_EMAIL=santiago1.ramis@volkswagen-groupservices.com
NPM_TOKEN=YW92eThoczpBS0NwQnU0dnJONnVTZzhFZ2ZVTlNGZlRmVXA4TlFDWHNCNmJ4NHZDUHU5SzZIRFoyMXhYNFVnZ2VpOWQ1dkQycXlib3U1d3c5

EDITOR=vim 

plugins=(
    z
    zsh-autosuggestions
    zsh-syntax-highlighting
    docker
    docker-compose
)
