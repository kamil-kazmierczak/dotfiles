export ZSH="$HOME/.oh-my-zsh"
export XDG_SESSION=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1

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
export FZF_DEFAULT_OPTS="--no-color --no-info"


alias od="source open-dir.sh" 
alias of="open-file.sh"
alias op="source open-project-dir.sh"

alias lla="ls -la"
alias gs="git status"
alias ga="git add"
alias gd="git diff"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# bun completions
[ -s "/home/kamilo/.bun/_bun" ] && source "/home/kamilo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
