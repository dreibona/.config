# https://zsh.sourceforge.io/Doc/Release/index.html -> zsh doc

# zsh
source $HOMEBREW/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history
HISTFILE=$ZSH/.zsh_history
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# aliases
alias reload="exec zsh -l"
alias mkdir="mkdir -p"
alias ls="ls -FG"
alias lh="ls -AFG"
alias ll="ls -l -G"
alias lg="ls -al -G"
alias bi="$CONFIG/scripts/brewinstall.sh"
alias up="$CONFIG/scripts/brewupgrade.sh"

# keybindings for autosuggestions
bindkey '^d' autosuggest-accept
bindkey '^w' history-search-backward
bindkey '^e' history-search-forward

# brew
export PATH="$HOMEBREW/bin:$PATH"

# fast node manager
eval "$(fnm env --use-on-cd)"

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=$CONFIG/starship/starship.toml
