#Shortcut to ssh into my linux box
alias nucbuntu="ssh kevin@10.0.10.194" #wired
alias skywalker="ssh root@10.0.10.1" #openwrt
alias spiderman="ssh root@10.0.10.186" #openmediavault
alias pdb='python -m pdb'
alias cat='bat' #use command cat to use cat
alias ls='ls -G' #Add in color for ls to see directories easier
#Allow better history between tmux panes/windows
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space
bindkey -e #emacs bindings
stty -ixon #Enable forward searching in macos, as it interferes with XON/XOFF
defaults write com.apple.terminal NSUserKeyEquivalents -dict-add "Print..." nil #disable print in terminal to reduce annoyance
#env
export PATH=/usr/local/bin:$PATH
export CLICOLOR=1
export CMAKE_GENERATOR=Ninja
export EDITOR='vi'
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@25/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk/27.0.12077973
#add edit command line for use in macoszsh
autoload edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line
#zsh plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
PS1="%n %F{242}›%f %3~ %F{cyan}%#%f "
eval "$(pyenv init -)" #Initialize pyenv for python environments
eval "$(zoxide init zsh)" #zoxide
source <(fzf --zsh) #fzf

