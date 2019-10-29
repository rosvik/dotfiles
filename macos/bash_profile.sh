#!/usr/bin/env bash

# ---------------------------
#    .bash_profile - MACOS
# ---------------------------
#
#  Author: Johannes T. Røsvik
#


# -------------
#    ALIASES
# -------------

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

export EDITOR="nano"
export NCDU_SHELL="bash -l"

# Setting locale settings
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# Set colored output for ls
# Generate LSCOLORS: https://geoff.greer.fm/lscolors/
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Set prompt
# Parameters: http://osxdaily.com/2006/12/11/how-to-customize-your-terminal-prompt/
export PS1="\[$(tput setaf 6)\]\W\[$(tput setaf 7)$(tput bold)\] > \[$(tput sgr0)\]"
#PS1="${RED}\W${RESET} ${BOLD}>${RESET} "

# iTerm window and tab title as current. 
# Source: https://gist.github.com/phette23/5270658
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

# ----------------
#    PATH SETUP
# ----------------

# Java
#export JAVA_HOME="$(/usr/libexec/java_home)" # Dynamic 
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
export M2_HOME=/usr/local/apache-maven-3.3.9
export M2=$M2_HOME/bin
export GRADLE_HOME=$(brew info gradle | grep /usr/local/Cellar/gradle | awk '{print $1}')

PATH=$M2:$PATH

# Python 3.6
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

# Some Python modules
PATH="~/.local/bin:$PATH"

# Added by Miniconda3 installer
PATH="~/.miniconda3/bin:$PATH"

# MySQL
PATH="/usr/local/mysql/bin:$PATH"

# Composer
PATH="~/.composer/vendor/bin:$PATH"

# PHP 7.2
PATH="/usr/local/Cellar/php/7.2.3_2/bin:$PATH"

# Custom user scripts
PATH="~/.scripts:${PATH}"

export PATH

# ---------------
#    GENERATED
# ---------------

# This must be at the end of the file for sdkman to work
export SDKMAN_DIR="/Users/rosvik/.sdkman"
[[ -s "/Users/rosvik/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/rosvik/.sdkman/bin/sdkman-init.sh"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# MacPorts Installer addition on 2019-08-12_at_14:42:05: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
