# ------------------
#    UNIX ALIASES
# ------------------

alias ip="curl -s icanhazip.com" # Your public IP address
alias ldir="ls -la | grep ^d" # List all directories in current directory in long list format
alias up="uptime" # Computer uptime
alias reload="exec bash -l"
alias t="tree -CF --filelimit 25 --dirsfirst"
alias portsplz="D3 gogs > sudo lsof -i -P -n | grep LISTEN"

# Display connected drives
alias disks="df -h"
alias disk="df -h"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
