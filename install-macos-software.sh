#!/usr/bin/env bash

HEADER=$'\e[1;93m' YELLOW=$'\e[93m' UNDERLINE=$'\e[4m' RESET=$'\e[0m'
HELP="
  ${HEADER}Install script for MacOS software ✨${RESET}
  ${UNDERLINE}https://github.com/rosvik/dotfiles${RESET}

  When running or updating this script, keep in mind:
  - It is safe to run several times.
  - It does not require dotfiles to be installed, but some of the software
    requires setup from dotfiles to work properly.

  Some version managers are installed instead of specific languages:
  - node:    ${YELLOW}nvm install --lts && nvm use --lts${RESET}
  - python:  ${YELLOW}pyenv install 3.9 && pyenv global 3.9${RESET}
  - ruby:    ${YELLOW}rbenv install 2.7.6 && rbenv global 2.7.6${RESET}
"

if [[ "${1-}" =~ ^-*h(elp)?$ ]]; then
  echo -e "$HELP"
  exit
fi
echo -e "$HELP"

print() {
  echo -e "${YELLOW}\n  $1${RESET}"
}

check_command_line_tools() {
  xcode-select --install 2>/dev/null
  return_code=$?
  if [ $return_code -ne 0 ]; then
    print "Seems like Command Line Tools is installed"
  else
    print "Seems like you need to install Command Line Tools"
    print "Rerun the script when that is done"
    exit 1
  fi
}
check_command_line_tools "$@"
# Exit the script on errors from now on.
set -o errexit

main() {

  print "Creating ~/bin (if not already present)"
  mkdir -pv ~/bin

  print "Installing yt-dlp"
  curl --silent -L -o ~/bin/yt-dlp "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp" &&
    chmod +x ~/bin/yt-dlp

  if [ ! -f "/opt/homebrew/bin/brew" ]; then
    print "Installing brew 🍺"
    /bin/bash -c "$(curl --silent -SL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    print "Running brew update (brew is already installed) 🍺"
    brew update
  fi

  print "Installing brew formulae 🍺"
  formulae=(
    "ffmpeg"
    "fq"
    "gh"
    "git-crypt"
    "gnupg"
    "gtop"
    "imagemagick"
    "jq"
    "neofetch"
    "openssl"
    "pyenv"
    "rbenv"
    "readline"
    "ruby-build"
    "sqlite3"
    "tcl-tk"
    "tree"
    "xz"
    "zlib"
    "bat"
    "fzf"
    "fd"
    "ripgrep"
  )
  for formula in "${formulae[@]}"; do
    echo "  - $formula"
    brew install --quiet "$formula"
  done

  print "Installing brew casks 🍺"
  casks=(
    "bartender"
    "bitwarden"
    "dash"
    "docker"
    "hex-fiend"
    "insomnia"
    "slack"
    "spotify"
    "vlc"
  )
  for cask in "${casks[@]}"; do
    echo "  - $cask"
    brew install --cask --quiet "$cask"
  done

  print "Installing nvm"
  PROFILE=/dev/null bash -c 'curl --silent -o- https://raw.githubusercontent.com/nvm-sh/nvm/HEAD/install.sh | bash'
}

main "$@"
print "Done 🎉"
