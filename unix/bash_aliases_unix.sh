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
alias dog="pygmentize -g"

# Display connected drives
alias disks="df -h"
alias disk="df -h"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ripme="java -jar ~/.dotfiles/unix/ripme.jar -l ."
