#
# .bash_profile, macOS
#
# Author: Johannes T. Røsvik
#


# ----------------
#    ALIASES
# ----------------

# Import alias file
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Import cross platform aliases
if [ -f ~/.bash_aliases_global ]; then
	. ~/.bash_aliases_global
fi


# ----------------
#    BASH SETUP
# ----------------

# Setting locale settings
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# Set colored output for ls
# Generate LSCOLORS: https://geoff.greer.fm/lscolors/
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Set prompt
# Parameters: http://osxdaily.com/2006/12/11/how-to-customize-your-terminal-prompt/

#PS1="${RED}\W${RESET} ${BOLD}>${RESET} "

export PS1="\[$(tput setaf 6)\]\W\[$(tput setaf 7)$(tput bold)\] > \[$(tput sgr0)\]"
#export PS1="\W > "

# -----------
#    PATHS
# -----------

# Java and Maven
export JAVA_HOME="$(/usr/libexec/java_home)"
export M2_HOME=/usr/local/apache-maven-3.3.9
export M2=$M2_HOME/bin
PATH=$M2:$PATH

# Python 3.6
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

# Added by Miniconda3 installer
PATH="~/.miniconda3/bin:$PATH"

# MySQL
PATH="/usr/local/mysql/bin:$PATH"

# Composer
PATH="~/.composer/vendor/bin:$PATH"

# PHP 7.2
PATH="/usr/local/Cellar/php/7.2.3_2/bin:$PATH"

export PATH


# -------------
#    ALIASES
# -------------

# Composer
alias composer="php /usr/local/bin/composer.phar"

# Chrome
alias chrome="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chrome-headless="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --headless --disable-gpu --remote-debugging-port=9222"

# Directory shortcuts
alias ntnu="cd ~/Documents/NTNU;pwd"
alias gitdir="cd ~/Documents/Git;pwd"
alias qore="cd ~/OneDrive/qore;pwd"

# DIV
alias ip="curl icanhazip.com" # Public IP address
alias ll="ls -la" # List all files in current directory in long list format
alias ldir="ls -la | grep ^d" # List all directories in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias up="uptime" # Computer uptime
alias py="python3" # Make using python less cancer

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/rosvik/.sdkman"
[[ -s "/Users/rosvik/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/rosvik/.sdkman/bin/sdkman-init.sh"
