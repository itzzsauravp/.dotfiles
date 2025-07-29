# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export XDG_PICTURE_DIR="$HOME/SystemUI/Screenshots"

alias ls='ls --color=auto'
alias grep='grep --color=auto'

git_branch() {
  if git rev-parse --is-inside-work-tree &>/dev/null; then
    git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null
  fi
}

# Colors for prompt parts
RED='\[\e[31m\]'
RESET='\[\e[0m\]'

PS1='[\u@\h \W'

# Append git branch in red if any
PS1+='$([ -n "$(git_branch)" ] && echo " ('"$RED"'$(git_branch)'"$RESET"')")'
PS1+=']\$ '

# eval "$(starship init bash)"
alias n.='nvim .'
alias bsh='nvim ~/.bashrc'
alias sbsh='source ~/.bashrc'
alias pve='source .venv/bin/activate'
alias pm='python manage.py'
alias dact='deactivate'
