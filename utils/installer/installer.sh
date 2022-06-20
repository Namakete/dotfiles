#!/usr/bin/env bash

function main(){
    print_logo
    msg "🔍 Detecting platform for managing any additional neovim dependencies"
    detect_platform
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

function detect_platform() {
    OS="$(uname -s)"
    case "$OS" in
        Linux)
            if [ -f "/etc/arch-release" ] || [ -f "/etc/artix-release" ]; then
                RECOMMEND_INSTALL="sudo pacman -S "
            elif [ -f "/etc/fedora-release" ] || [ -f "/etc/redhat-release" ]; then
                RECOMMEND_INSTALL="sudo dnf install -y "
            elif [ -f "/etc/gentoo-release" ]; then
                RECOMMEND_INSTALL="emerge install -y "
            else
                RECOMMEND_INSTALL="sudo apt install -y "
            fi
            ;;
        FreeBSD)
            RECOMMEND_INSTALL="sudo pkg install -y "
            ;;
        NetBSD)
            RECOMMEND_INSTALL="sudo pkgin install "
            ;;
        OpenBSD)
            RECOMMEND_INSTALL="doas pkg_add "
            ;;
        Darwin)
            RECOMMEND_INSTALL="brew install "
            ;;
        *)
            echo "OS $OS is not currently supported 😔"
            exit 1
            ;;
    esac
}

main
