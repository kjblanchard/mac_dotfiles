alias nucbuntu="ssh kevin@10.0.10.194" # wired
alias skywalker="ssh root@10.0.10.1"    # OpenWrt
alias spiderman="ssh root@10.0.10.186"  # OpenMediaVault
alias pdb='python -m pdb'
alias cat='bat'
alias ls='ls -G'
HISTSIZE=1000000
SAVEHIST=1000000
# Allow better history between tmux panes/windows
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space
bindkey -e # Emacs-style key bindings
stty -ixon # Disable XON/XOFF so Ctrl-S / Ctrl-Q work normally
# Edit current command with Ctrl-X Ctrl-E
autoload edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
PS1="%n %F{242}›%f %3~ %F{cyan}%#%f "
eval "$(pyenv init -)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)
function emsdk() {
	export EMSDK_QUIET=1
	source "$HOME/git/c/emsdk/emsdk_env.sh"
}
# defaults write com.apple.terminal NSUserKeyEquivalents -dict-add "Print..." nil # run this once to remove print stuff


