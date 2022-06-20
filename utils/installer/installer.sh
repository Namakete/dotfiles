#!/usr/bin/env bash

function main(){
    print_logo
    msg "🔍 Detecting platform for managing any additional neovim dependencies"
}

function print_logo() {
  cat <<'EOF' 
        _   _                       ____        _   _____ _ _           
       | \ | | __ _ _ __ ___   __ _|  _ \  ___ | |_|  ___(_) | ___  ___ 
       |  \| |/ _` | '_ ` _ \ / _` | | | |/ _ \| __| |_  | | |/ _ \/ __|
       | |\  | (_| | | | | | | (_| | |_| | (_) | |_|  _| | | |  __/\__ \
       |_| \_|\__,_|_| |_| |_|\__,_|____/ \___/ \__|_|   |_|_|\___||___/
                                                                        
EOF
}

function msg() {
    local text="$1"
    local div_width="80"
    printf "%${div_width}s\n" ' ' | tr ' ' -
    printf "%s\n" "$text"
}

main
