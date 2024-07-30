#!/usr/bin/env zsh

# ---------------------- local utility functions ---------------------

_have()      { type "$1" &>/dev/null; }
_haveNot()      { -z type "$1" &>/dev/null; }
_source_if() { [[ -r "$1" ]] && source "$1"; }

# ---------------------------- flutter -------------------------------

if _haveNot flutter; then
  echo "Warning, doesn't have flutter in PATH file."
else
  export PATH="$PATH:/Users/namakete/Development/flutter/bin"
fi

# --------------------------- oh-my-posh -----------------------------

if _haveNot oh-my-posh; then
  echo "Warning, doesn't have oh-my-posh in PATH file."
else
  export ZSH="$HOME/.oh-my-zsh"
fi

if _have _zsh_autosuggest_toggle; then
  echo "Warning, doesn't have zsh_autosuggest plugins for oh-my-zsh"
fi

plugins=(
  git
  zsh-z
)

unalias -a
source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

# ------------------------------ aliases -----------------------------

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias chmox='chmod +x'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias md='mkdir -p'
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls --color=tty'
alias lgit='lazygit'
alias ldocker='lazydocker'
alias lnpm='lazynpm'
alias g='git'
alias gv='git --version'
alias gs='git status'
alias gd='git diff --stat | tail -n1'
alias zconf='nvim ~/.zshrc'

# ----------------------------- EXPORT PATH ----------------------------

export PATH="$PATH:$(npm get prefix)/bin"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ----------------------------- FUNCTIONS -------------------------------

htt() {
  echo " "
  http "$@" | jq . | bat --language=json --style=grid --paging=never
  echo " "
}

idea() {
  if _haveNot tmux; then
    echo "Tmux is not installed."
  fi

  tmux split-window -v -l 30%
  tmux split-window -h -l 66%
  tmux split-window -h -l 50%
}

# ------------------------------ greeting -------------------------------

greeting() {
  local current_time=$(date "+%H:%M")
  echo "💬 $(date "+%a, %b %d %Y")  $current_time  $(hostname -s)"
}

# greeting

# ------------------------------- prompt ------------------------------

git_prompt_info() {
    local branch_name=$(git branch --show-current 2> /dev/null)
    local git_status=$(git status --porcelain=v2 2> /dev/null)
    local staged_changes=$(grep -c "^1 " <<< "$git_status")
    local unstaged_changes=$(grep -c "^2 " <<< "$git_status")
    local untracked_files=$(grep -c "^??" <<< "$git_status")

    local git_info=""

    if [[ -n $branch_name ]]; then
        git_info+="%{$fg[red]%} $branch_name%{$reset_color%} ≡"
    else
        local head=$(git rev-parse --short HEAD 2> /dev/null)
        if [[ -n $head ]]; then
            git_info+="%{$fg[red]%} HEAD ($head)%{$reset_color%} ≡"
        fi
    fi
    
    if [[ $staged_changes -gt 0 || $unstaged_changes -gt 0 || $untracked_files -gt 0 ]]; then
        git_info+=" "
        [[ $staged_changes -gt 0 ]] && git_info+="%{$fg[green]%}~$staged_changes%{$reset_color%}"
        [[ $unstaged_changes -gt 0 ]] && git_info+="%{$fg[red]%} -$unstaged_changes%{$reset_color%}"
        [[ $untracked_files -gt 0 ]] && git_info+="%{$fg[blue]%} ?$untracked_files%{$reset_color%}"
    fi

    echo "$git_info"
}

set_prompt() {
    local current_directory_short="%{$fg[cyan]%}$(basename "$PWD")%{$reset_color%}"
    local current_directory_long="%{$fg[cyan]%}%~%{$reset_color%}"
    local user_formatted="%{$fg[yellow]%}$USER%{$reset_color%}"
    local git_info=$(git_prompt_info)

    if [[ -n $git_info ]]; then
        PROMPT="${current_directory_short} on ${git_info}
 "
    else
        PROMPT="${current_directory_long}  "
    fi
}

precmd_functions+=(set_prompt)

