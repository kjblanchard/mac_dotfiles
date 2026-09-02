eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/usr/local/bin:$PATH"
export CLICOLOR=1
export EDITOR='vi'
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@25/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_NDK_HOME="$ANDROID_HOME/ndk/27.0.12077973"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"

