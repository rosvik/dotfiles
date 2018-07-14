# ---------------------------
#    .bash_profile - MACOS
# ---------------------------
#
#  Author: Johannes T. Røsvik
#


# ----------------
#    ALIASES
# ----------------

# Import cross platform aliases
if [ -f ~/.bash_aliases_unix ]; then
	. ~/.bash_aliases_unix
fi

# Import MacOS alias file
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
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
# export LS_COLORS=gxBxhxDxfxhxhxhxhxcxcx

# Set prompt
# Parameters: http://osxdaily.com/2006/12/11/how-to-customize-your-terminal-prompt/

#PS1="${RED}\W${RESET} ${BOLD}>${RESET} "

export PS1="\[$(tput setaf 6)\]\W\[$(tput setaf 7)$(tput bold)\] > \[$(tput sgr0)\]"
#export PS1="\W > "


# ----------------
#    PATH SETUP
# ----------------

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

# ¯\_(ツ)_/¯ 
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/rosvik/.sdkman"
[[ -s "/Users/rosvik/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/rosvik/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.cargo/bin:$PATH"
