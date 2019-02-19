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

# -------------
#    SCRIPTS
# -------------

# Open repo in GitKraken
kraken() {
	# Set the $target variable by temporarily going there
	current="$PWD";cd "$1";target="$PWD";cd "$current"

	# Will open GitKraken to parameter given in first argument
	open -a "GitKraken" --args -p "$target";
}

# Open URL or file in Safari.app
safari() {
	# https://stackoverflow.com/a/3184819/5976426
	regex="(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]"
	string="$1"
	if [[ $string =~ $regex ]]
	then # URL valid
		osascript -e "tell application \"Safari\" to open location \"$1\""
	else # URL not valid
		# Set the $target variable to absolute path
		# https://stackoverflow.com/a/3915420/5976426
		target="$(cd "$(dirname "$1")"; pwd -P)/$(basename "$1")"
		osascript -e "tell application \"Safari\" to open location \"$target\""
	fi
}

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


# ----------------
#    PATH SETUP
# ----------------

# Java
export JAVA_HOME="$(/usr/libexec/java_home)"
export M2_HOME=/usr/local/apache-maven-3.3.9
export M2=$M2_HOME/bin
export GRADLE_HOME=$(brew info gradle | grep /usr/local/Cellar/gradle | awk '{print $1}')

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

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
