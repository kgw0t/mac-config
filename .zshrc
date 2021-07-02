# comp
autoload -Uz compinit
compinit
zstyle ':completion:*:' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*:default' menu select=1

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd(){ vcs_info }

# prompt
export PROMPT=$'\n''%~'$'\n''$ '
export RPROMPT='${vcs_info_msg_0_}'

# beep
setopt no_beep

# aliases
alias l='ls'
alias ll='ls -l'
alias la='ls -la'
alias gitop='cd `git rev-parse --show-toplevel`'

# Homebrew
# eval "$(/opt/homebrew/bin/brew shellenv)"
# export PATH="/opt/homebrew/bin:$PATH""

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
