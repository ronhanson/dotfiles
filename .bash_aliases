##
# PHP Shortcuts
##

alias nginx.start='sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'
alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
alias php-fpm.restart='php-fpm.stop && php-fpm.start'
alias mysql.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.restart='mysql.stop && mysql.start'
alias nginx.logs.error='tail -250f /usr/local/etc/nginx/logs/error.log'
alias nginx.logs.access='tail -250f /usr/local/etc/nginx/logs/access.log'
alias nginx.logs.default.access='tail -250f /usr/local/etc/nginx/logs/default.access.log'
alias nginx.logs.default-ssl.access='tail -250f /usr/local/etc/nginx/logs/default-ssl.access.log'
alias nginx.logs.phpmyadmin.error='tail -250f /usr/local/etc/nginx/logs/phpmyadmin.error.log'
alias nginx.logs.phpmyadmin.access='tail -250f /usr/local/etc/nginx/logs/phpmyadmin.access.log'

##
# MISC Shorcuts
##
alias lc='colorls'
alias llc='colorls -Al --sd'
alias llr='colorls --report'
alias llt='colorls --tree'
alias zshconfig='vi ~/.zshrc'
alias ll='ls -lh'
alias v='vagrant'
alias showhiddens='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hidehiddens='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'
alias gf='git flow'
alias fixcam='sudo replug_facetime && sudo killall VDCAssistant'
alias fixaudio='sudo killall coreaudiod'
alias d='docker'
alias hgrep='history | grep'
alias remove_all_docker='docker rm $(docker ps -a -q)'
alias bash_shell='exec bash --login'
alias zsh_shell='exec zsh --login'
alias vi=vim

## 
# Python Shortcuts
##
alias activate='source venv/bin/activate'
alias act='source venv/bin/activate'
alias p='python3 -m ptpython'
alias ipy='ipython3'

#alias c="git_index"

##
# CINECARDZ SHORTCUTS
##

alias ssh_ccz='ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem'
alias scp_ccz='scp -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem'

alias logwatch.eu="ssh logwatch@logwatch.eu.cinecardz.com"
alias logwatch.us="ssh logwatch@logwatch.us.cinecardz.com"

alias webhosting.us.01="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@webhosting-0001.us.cinecardz.com"
alias webhosting.us.02="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@webhosting-0002.us.cinecardz.com"
alias webhosting.eu.01="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@webhosting-0001.eu.cinecardz.com"
alias webhosting.eu.02="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@webhosting-0002.eu.cinecardz.com"
alias webhosting.dev.01="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@webhosting-0001.dev.cinecardz.com"
alias webhosting.dev.02="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@webhosting-0002.dev.cinecardz.com"
alias dcp-encoder.eu.01="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@dcp-encoder-01.eu.cinecardz.com"
alias dcp-encoder.eu.02="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@dcp-encoder-02.eu.cinecardz.com"
alias dcp-encoder.us.01="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@dcp-encoder-01.us.cinecardz.com"
alias dcp-encoder.us.02="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@dcp-encoder-02.us.cinecardz.com"
alias dcp-encoder.dev.01="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@dcp-encoder-01.dev.cinecardz.com"
alias dcp-encoder.dev.02="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@dcp-encoder-02.dev.cinecardz.com"
alias job-database.dev="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@job-database.dev.cinecardz.com"
alias job-database.eu="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@job-database.eu.cinecardz.com"
alias job-database.us="ssh -i /Users/ronand/Documents/Cinecardz/Cinecardz-Amazon.pem ubuntu@job-database.us.cinecardz.com"

##
# Docker Builder
##
alias deb-python-build-trusty="docker pull \"ronhanson/python-deb-packager-trusty\" && docker run --rm --name python-deb-packager-trusty -v $(pwd):/opt/current_folder \"ronhanson/python-deb-packager-trusty\" "
