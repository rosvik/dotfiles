export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/rosvik/.scripts:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"

export GPG_TTY=$(tty)

eval "$(rbenv init - zsh)"
eval `ssh-agent -s`

export DISABLE_UPDATE_PROMPT=true
export DISABLE_AUTO_UPDATE=true

export CHROME_EXECUTABLE=/Applications/Chromium.app/Contents/MacOS/Chromium

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rosvik/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/rosvik/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rosvik/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/rosvik/bin/google-cloud-sdk/completion.zsh.inc'; fi

export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.config/gcloud/application_default_credentials.json"

export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
alias ios="export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk"
alias mac="export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"

# TeX Live setup
export PATH="/usr/local/texlive/2022/bin/universal-darwin:$PATH"
export MANPATH="/usr/local/texlive/2022/texmf-dist/doc/man:$MANPATH"
export INFOPATH="/usr/local/texlive/2022/texmf-dist/doc/info:$INFOPATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
