# -------------------
#    MACOS ALIASES
# -------------------

alias ll="ls -laFh" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias py="python3.9" # Make using python less terrible
alias daisy="ncdu --color dark"
alias yt-best="youtube-dl -f bestvideo[ext=mp4]+bestaudio[ext=m4a]"
# alias firefox="/Applications/Firefox.app/Contents/MacOS/firefox-bin"
# alias eclipse="open -g /Applications/Eclipse.app/Contents/MacOS/eclipse"
alias ql='qlmanage -p "$@" &> /dev/null' # Quick look
alias b='EDITOR=nano ranger'
alias gd='git diff | bat'
alias s='spotify'
alias sp='spotify pause'
alias rc='subl ~/.zshrc'
alias ealias='subl ~/.dotfiles/macos/oh-my-zsh/aliases.zsh'
alias eomz='subl ~/.dotfiles/macos/oh-my-zsh'


# PHP
# alias composer="php /usr/local/bin/composer.phar"
# alias hs="vagrant up 56b15ac;npm run watch"

# Chrome
# alias chrome="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
# alias chrome-headless="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --headless --disable-gpu --remote-debugging-port=9222"

# Directory shortcuts
alias gf="cd ~/git;pwd"

# ------------------
#    UNIX ALIASES
# ------------------

alias ip="curl -s icanhazip.com" # Your public IP address
alias ldir="ls -la | grep ^d" # List all directories in current directory in long list format
alias cl="clear;ls -la" # Clear screen then list the current directory
alias up="uptime" # Computer uptime
alias reload="$SHELL"
alias t="tree -CF --filelimit 25 --dirsfirst"
alias portsplz="sudo lsof -i -P -n | grep LISTEN"
alias psearch="ps ax | grep"
alias dog="bat"
alias grep="grep --color=always"
alias calc="bc -l <<<"
alias dl="curl -O"
alias gitnvm="git reset --soft HEAD~1"
alias gtl='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'
alias podi='npx pod-install ios'
alias rebuild='yarn clean:install && yarn setup dev atb && podi && yarn start --reset-cache && yarn ios'

# Display connected drives
alias disks="df -h"
alias disk="df -h"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ripme="java -jar ~/.dotfiles/unix/ripme.jar -l ."
