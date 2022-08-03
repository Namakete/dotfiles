oh-my-posh --init --shell fish --config ~/.config/oh-my-posh/themes/gruvbox.json| source
#oh-my-posh --init --shell fish --config ~/.config/oh-my-posh/themes/shell.json| source

set PATH ~/development/flutter/bin $PATH

set fish_greeting ""

set -gx TERM xterm-256color

set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always


# Show list data
alias ls "ls -p -G"
alias la "ls -A"
alias ll "exa --long --git --icons"
alias lla "ll -a"
alias bat "bat --theme='gruvbox-dark'"

# Git
alias g git
alias lg lazygit

# Bind vim & neovim
command -qv nvim && alias vim nvim

# Scripts
alias 255color "~/.config/scripts/255color" 
alias banner "~/.config/scripts/banner" 
alias covid "~/.config/scripts/covid" 
alias workspace "~/.config/scripts/workspace" 
