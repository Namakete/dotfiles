set oh_my_posh_config $HOME/.config/fish/themes/config.json

if test -f $oh_my_posh_config
    oh-my-posh --init --shell fish --config $oh_my_posh_config | source
else
    oh-my-posh --init --shell fish | source
end

# Aliases 
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias lg="lazygit"
alias ls="exa"
alias la="ls -A"
alias ll="ls -l"
alias lla="ll -A"
alias g="git"


# Script aliases
source $HOME/.config/fish/functions/__255colors.fish

alias 256color="show_255_colors"
