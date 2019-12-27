fpath=($(cd $(dirname $0); pwd)/../zsh-completions/src $fpath)
autoload -U compinit
compinit -u
eval "$(starship init zsh)"
source $(cd $(dirname $0); pwd)/../zsh-autosuggestions/zsh-autosuggestions.zsh
source $(cd $(dirname $0); pwd)/../zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(cd $(dirname $0); pwd)/../zsh-history-substring-search/zsh-history-substring-search.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1
export ZSH_AUTOSUGGEST_USE_ASYNC=1
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
setopt hist_ignore_dups
setopt EXTENDED_HISTORY
setopt RM_STAR_WAIT
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'