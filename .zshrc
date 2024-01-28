export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=()

source $ZSH/oh-my-zsh.sh

GO_PATH='/usr/local/go/bin'
export SCRIPTS_PATH=~/.scripts
export EDITOR='nvim'
export PATH=$PATH:$SCRIPTS_PATH:$GO_PATH

if [[ -z "$FZF_DEFAULT_COMMAND" ]]; then
  if (( $+commands[fd] )); then
    export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'
  elif (( $+commands[rg] )); then
    export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git/*"'
  elif (( $+commands[ag] )); then
    export FZF_DEFAULT_COMMAND='ag -l --hidden -g "" --ignore .git'
  fi
fi

alias od="source open-dir.sh" 
alias of="open-file.sh"

alias lla="ls -la"
alias gs="git status"
alias ga="git add"
alias gd="git diff"
