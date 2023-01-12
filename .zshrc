#!/usr/bin/env zsh
# ---------------------- local utility functions ---------------------

_have()      { type "$1" &>/dev/null; }
_source_if() { [[ -r "$1" ]] && source "$1"; }

# ---------------------------- flutter -------------------------------

if [ -z "$(which flutter)" ]; then
  echo "Warning, doesn't have flutter in PATH file."
else
  export PATH="$PATH:/Users/namakete/Development/flutter/bin"
fi

# --------------------------- oh-my-posh -----------------------------

if [ -z "$(which oh-my-zsh)" ]; then
  echo "Warning, doesn't have oh-my-posh in PATH file."
else
  export ZSH="$HOME/.oh-my-zsh"
fi

if _have z; then
  echo "Warning, doesn't have z plugins for oh-my-zsh"
fi

if _have _zsh_autosuggest_toggle; then
  echo "Warning, doesn't have zsh_autosuggest plugins for oh-my-zsh"
fi

plugins=(
  git
  zsh-autosuggestions
  z
)

unalias -a
source $ZSH/oh-my-zsh.sh

# ------------------------------ aliases -----------------------------

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias chmox='chmod +x'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias md='mkdir -p'
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls --color=tty'
alias lg='lazygit'
alias g='git'
alias gv='git --version'
alias gs='git status'
alias gd='git diff --stat | tail -n1'
alias zconf='nvim ~/.zshrc'
alias tmuxconf='nvim ~/.tmux.conf'
alias vimconf='nvim ~/.config/nvim/init.vim'
alias tns='tmux new-session -s'
alias tas='tmux attach-session -t'
alias tkas='pkill -f tmux'

# ------------------------------ scripts -----------------------------

alias 255color='~/.config/scripts/255color'
alias banner='~/.config/scripts/banner'
alias covid='~/.config/scripts/covid'

if [ -z "$(which tmux)" ]; then
  echo "Warning, doesn't have tmux"
else
  alias workspace='~/.config/scripts/workspace'
fi

# ------------------------------- theme ------------------------------

export VIRTUAL_ENV_DISABLE_PROMPT=true
setopt PROMPT_SUBST

__shell_zsh_theme() {
  echo -n -e " \033[1m%F{13}%~"
	echo -n " "

	local git_branch=$(git --no-optional-locks branch --show-current 2> /dev/null)
  if [[ -n "$git_branch" ]]; then
		local git_status=$(git --no-optional-locks status --porcelain 2> /dev/null | tail -n 1)
    local git_unstaged=$(git status | wc -l 2> /dev/null | sed s/' '//g)
    echo -n "%F{2}git:("
		[[ -n "$git_status" ]] && echo -n "%F{11}" || echo -n "%F{6}"
    echo -n "${git_branch}"
    echo -n "%F{2})%F{6}±${git_unstaged}\033[0m"
	fi

	echo
  echo -n "%(?.%f.%F{1}) "
  
}

export PROMPT='$(__shell_zsh_theme)'
