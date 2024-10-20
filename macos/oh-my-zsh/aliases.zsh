# -------------------
#    MACOS ALIASES
# -------------------

alias ll="ls -laFh" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias py="python3.9" # Make using python less terrible
alias daisy="ncdu --color dark"
alias yt-best="youtube-dl -f bestvideo[ext=mp4]+bestaudio[ext=m4a]"
alias firefox="/Applications/Firefox Nightly.app/Contents/MacOS/firefox-bin"
alias ql='qlmanage -p "$@" &> /dev/null' # Quick look
alias b='EDITOR=nano ranger'
alias gd='git diff | bat'
alias s='spotify'
alias sp='spotify pause'
alias rc='subl ~/.oh-my-zsh/custom && subl ~/.zshrc'
alias ai="ollama run llama2:13b"
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
alias gw="./gradlew"
alias gradle="./gradlew"
alias cop="gh copilot suggest -t shell"
alias cog="gh copilot suggest -t git"
alias hpe="rclone mount hpe.lan:/data ~/tmp/hpemnt &"
alias jqi="jnv"

# Directory shortcuts
alias gf="cd ~/git;pwd"
alias atb="cd ~/git/atb;pwd"

# PHP
# alias composer="php /usr/local/bin/composer.phar"
# alias hs="vagrant up 56b15ac;npm run watch"

# Chrome
# alias chrome="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
# alias chrome-headless="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --headless --disable-gpu --remote-debugging-port=9222"

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
alias pwdplz="openssl rand -base64 24 | tr -d '+/='"
alias psearch="ps ax | grep"
alias dog="bat"
alias grep="grep --color=always"
alias calc="bc -l <<<"
alias dl="curl -O"
alias gitnvm="git reset --soft HEAD~1"
alias gtl='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'
alias podi='npx pod-install ios'
alias rebuild='yarn clean:install && yarn setup dev atb && podi && cd android && ./gradlew clean && cd - && bundle install && yarn ios --list-devices'
alias ssh-noagent='ssh -a -i /dev/null' # https://www.clockwork.com/insights/ssh-agent-hijacking/

# Git
alias gap="git add -p"

# Display connected drives
alias disks="df -h"
alias disk="df -h"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ripme="java -jar ~/.dotfiles/unix/ripme.jar -l ."
