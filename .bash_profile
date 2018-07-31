#export PS1="\u:\w$ "
export PS1="\[\e[0;32m\]\u\[\e[0;33m\]:\[\e[1;34m\]\w\[\e[0;33m\]$ \[\e[m\]"
HISTFILESIZE=10000000
HISTSIZE=10000000

alias ll='ls -lh'
alias v='vagrant'
alias showhiddens='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hidehiddens='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'
alias c="git_index"
alias activate='source venv/bin/activate'
alias act='source venv/bin/activate'

export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
export PATH=$PATH:.

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

alias gf='git flow'
export PATH=/usr/local/bin:/usr/local/sbin:/opt/scripts:/opt/opendcp/bin:$PATH

alias fixcam='sudo replug_facetime && sudo killall VDCAssistant'
alias fixaudio='sudo killall coreaudiod'

eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
eval "$(thefuck --alias FUCK)"
TF_ALIAS=fu alias fu='eval $(thefuck $(fc -ln -1)); history -r'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
PHP_AUTOCONF="/usr/local/bin/autoconf"

alias p='python3.5 -m ptpython'
alias ipy='ipython3'
source ~/.bash_aliases
alias d='docker'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

export AMAZON_SSH_KEY="/Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem"

export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export MAGICK_HOME=/usr/local/opt/imagemagick@6

#Python pew
source $(pew shell_config)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ronand/google-cloud-sdk/path.bash.inc' ]; then source '/Users/ronand/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ronand/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/ronand/google-cloud-sdk/completion.bash.inc'; fi

alias hgrep='history | grep'
alias remove_all_docker='docker rm $(docker ps -a -q)'

[ -s "/Users/ronand/.scm_breeze/scm_breeze.sh" ] && source "/Users/ronand/.scm_breeze/scm_breeze.sh"
