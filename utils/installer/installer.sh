#!/usr/bin/env bash

declare ARGS_INSTALL_DEPENDENCIES=1

function main(){
    print_logo
    
    msg "[🔍]: Detecting platform for managing any additional neovim dependencies..."
    detect_platform
    
    msg "[🔍]: Checking package managers..."
    install_pkg_managers
    
    msg "[🔍]: Installing nodejs dependenciesd..."
    install_nodejs_deps
    
    msg "[🔍]: Installing python dependenciesd..."
    install_python_deps

    echo -e '\033[0;32m Download finished!'
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
    
    printf "%s\n" "$text"
}

function print_missing_dep_msg() {
  if [ "$#" -eq 1 ]; then
    echo "[😫]: Unable to find package [$1]"
    echo "The package $1 will bew installed"
  else
    local cmds
    
    cmds=$(for i in "$@"; do echo "$RECOMMEND_INSTALL $i"; done)
    
    printf "[😣]: Unable to find dependencies [%s]" "$@"
    printf "Please install any one of the dependencies and re-run the installer. Try: \n%s\n" "$cmds"
  fi
}

function detect_platform() {
    local OS="$(uname -s)"
    
    case "$OS" in
        Linux)
            if [ -f "/etc/arch-release" ] || [ -f "/etc/artix-release" ]; then
                RECOMMEND_INSTALL="sudo pacman -S"
            elif [ -f "/etc/fedora-release" ] || [ -f "/etc/redhat-release" ]; then
                RECOMMEND_INSTALL="sudo dnf install -y "
            elif [ -f "/etc/gentoo-release" ]; then
                RECOMMEND_INSTALL="emerge install -y"
            else
                RECOMMEND_INSTALL="sudo apt install -y"
            fi
            ;;
        FreeBSD)
            RECOMMEND_INSTALL="sudo pkg install -y"
            ;;
        NetBSD)
            RECOMMEND_INSTALL="sudo pkgin install"
            ;;
        OpenBSD)
            RECOMMEND_INSTALL="doas pkg_add"
            ;;
        Darwin)
            RECOMMEND_INSTALL="brew install"
            ;;
        *)
            echo "OS $OS is not currently supported 😔"
            exit 1
            ;;
    esac
}

declare -a __pkg_managers=(
    "npm"
    "yarn"
    "pip"
)

declare -a __npm_deps=(
    "neovim"
)

declare -a __pip_deps=(
    "pynvim"
)

function install_pkg_managers() {
    for pkg in "${__pkg_managers[@]}"; do
        if ! command -v ${pkg} &>/dev/null; then
            print_missing_dep_msg "$pkg"
            $RECOMMEND_INSTALL "$pkg"
        fi
    done
}

function __install_nodejs_deps_npm() {
    echo "Installing node modules with npm.."
    
    for dep in "${__npm_deps[@]}"; do
        if ! npm ls -g "$dep" &>/dev/null; then
            printf "installing %s .." "$dep"
            npm install -g "$dep"
        fi
    done

    echo "All NodeJS dependencies are successfully installed"
}

function __install_nodejs_deps_yarn() {
    echo "Installing node modules with yarn.."
    
    yarn global add "${__npm_deps[@]}"

    echo "All NodeJS dependencies are successfully installed"
}

function __validate_node_installation() {
    local pkg_manager="$1"
    local manager_home

    if ! command -v "$pkg_manager" &>/dev/null; then
        return 1
    fi

    if [ "$pkg_manager" == "npm" ]; then
        manager_home="$(npm config get prefix 2>/dev/null)"
    else
        manager_home="$(yarn global bin 2>/dev/null)"
    fi

    if [ ! -d "$manager_home" ] || [ ! -w "$manager_home" ]; then
        echo "[😔] Unable to install using [$pkg_manager] without administrative privileges."
        return 1
    fi

    return 0
}

function install_nodejs_deps() {
    local -a pkg_managers=("yarn" "npm")

    for pkg_manager in "${pkg_managers[@]}"; do
        if __validate_node_installation "$pkg_manager"; then
            eval "__install_nodejs_deps_$pkg_manager"
            return
        fi
    done

    print_missing_dep_msg "${pkg_managers[@]}"
    
    exit 1
}

function install_python_deps() {
    if ! python3 -m ensurepip &>/dev/null; then
        if ! python3 -m pip --version &>/dev/null; then
            print_missing_dep_msg "pip"
            exit 1
        fi
    fi
  
    echo "Installing with pip.."
  
    for dep in "${__pip_deps[@]}"; do
        python3 -m pip install --user "$dep"
    done
    echo "All Python dependencies are successfully installed"
}

main
