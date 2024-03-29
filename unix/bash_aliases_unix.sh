# ------------------
#    UNIX ALIASES
# ------------------

alias ip="curl -s icanhazip.com" # Your public IP address
alias ldir="ls -la | grep ^d" # List all directories in current directory in long list format
alias cl="clear;ls -la" # Clear screen then list the current directory
alias up="uptime" # Computer uptime
alias reload="exec bash -l"
alias t="tree -CF --filelimit 25 --dirsfirst"
alias portsplz="sudo lsof -i -P -n | grep LISTEN"
alias psearch="ps ax | grep"
alias dog="highlight --base16=seti --force"
alias grep="grep --color=always"
alias calc="bc -l <<<"
alias dl="curl -O"
alias gitnvm="git reset --soft HEAD~1"
alias gtl='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'
alias fuzz='cd $(sk --preview="bat {} --color=always")'

# Display connected drives
alias disks="df -h"
alias disk="df -h"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ripme="java -jar ~/.dotfiles/unix/ripme.jar -l ."
