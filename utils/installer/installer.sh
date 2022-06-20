#!/usr/bin/env bash

declare ARGS_INSTALL_DEPENDENCIES=1

function main(){
    print_logo
    msg "🔍 Detecting platform for managing any additional neovim dependencies..."
    detect_platform
    msg "🔍 Check system dependencies..."
    check_system_deps
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
    printf "%s\n" "$text"
}

function print_missing_dep_msg() {
  if [ "$#" -eq 1 ]; then
    echo "[😫]: Unable to find dependency [$1]"
    echo "Please install it first and re-run the installer. Try: $RECOMMEND_INSTALL $1"
  else
    local cmds
    cmds=$(for i in "$@"; do echo "$RECOMMEND_INSTALL $i"; done)
    printf "[😣]: Unable to find dependencies [%s]" "$@"
    printf "Please install any one of the dependencies and re-run the installer. Try: \n%s\n" "$cmds"
  fi
}

declare -a vim_deps=(
    "nvim"
)

function confirm() {
    local question="$1"
    while true; do
        msg "$question"
        read -p "[Y]es or [N]o : " -r answer
        case "$answer" in
        y | Y | yes | YES | Yes)
            return 0
            ;;
        n | N | no | NO | No | *[[:blank:]]* | "")
            return 1
            ;;
        *)
            msg "Please answer [y]es or [n]o."
            ;;
        esac
    done
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

function check_system_deps() {
    if ! command -v git &>/dev/null; then
        print_missing_dep_msg "git"
        exit 1
    fi
    if ! command -v npm &>/dev/null; then
        print_missing_dep_msg "npm"
        exit 1
    fi
    if ! command -v node &>/dev/null; then
        print_missing_dep_msg "node"
        exit 1
    fi
    if ! command -v vim &>/dev/null; then
        print_missing_dep_msg "vim"
        exit 1
    fi
}

main
