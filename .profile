#!/bin/sh

### Environment Variables ###{{{

# PATH
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/scripts"

# Programs

export TERMINAL="kitty"
export BROWSER="brave"
export EDITOR="nvim"
export WM="bspwm"

# Personal utils

export SCRIPTS_DATA_PATH="$XDG_DATA_HOME/local-scripts/"
export SCRIPTS_SH_UTILS="$XDG_CONFIG_HOME/shell/utils.sh"
export SHELL_RC="$HOME/.config/zsh/.zshrc"

# XDG Paths

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DESKTOP_DIR="$HOME/"
export XDG_DOCUMENTS_DIR="$HOME/dox"
export XDG_DOWNLOAD_DIR="$HOME/dl"
export XDG_MUSIC_DIR="/media/music"
export XDG_PICTURES_DIR="/media/photos"
export XDG_VIDEOS_DIR="/media/videos"
export XDG_PUBLICSHARE_DIR="$HOME/"
export XDG_TEMPLATES_DIR="$HOME/"

# Application config

export HISTFILE="$XDG_CACHE_HOME/.bash_history"
export LESSHISTFILE="$XDG_CACHE_HOME/.less_history"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GOPATH="$XDG_DATA_HOME/go"
export NVM_DIR="$XDG_DATA_HOME/nvm"
export NODE_REPL_HISTORY="$XDG_CACHE_HOME/.node_repl_history"
export MPD_HOST="$XDG_DATA_HOME/mpd/socket"
export XAUTHORITY="$XDG_CONFIG_HOME/.Xauthority"
export GNUPGHOME="$XDG_DATA_HOME/gnupg/"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch/config"
export MBSYNCRC="$XDG_CONFIG_HOME/isync/mbsyncrc"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
#}}}

### Aliases ###{{{

# Configuration (same name)
alias irssi="irssi --config='$XDG_CONFIG_HOME/irssi/config' --home='$XDG_DATA_HOME/irssi'"
alias picom="picom --experimental-backends --config $XDG_CONFIG_HOME/picom/picom.conf"
alias ls="ls --color=always --group-directories-first -w 60 -AHXhp"
alias spotdl="spotdl --ignore-ffmpeg-version -o $HOME/dl/music"
alias yarn="yarn --no-default-rc"
alias startx="startx $XDG_CONFIG_HOME/X11/xinitrc"
alias polybar="$XDG_CONFIG_HOME/polybar/launch"
alias sxhkd="$XDG_CONFIG_HOME/sxhkd/launch"
alias gparted="devour sudo gparted"
alias mpd="mpd --no-daemon"

# Renames
alias mail="aerc"

# Convenience       
alias c="clear"     
alias n="nvim"      
alias l="ls"       
alias ll="l -l"

# Quality of life
alias cdc="cd && clear"
alias ..="cd .."

# Git
alias gcm="git commit -m"
alias gs="git status"
alias ga="git add"
#}}}

### Functions ###{{{

g() {
    case "$1" in
        "config"*)
            cd "$HOME/.$1"
            ;;
        *)
            echo "Uknown location $1"
            ;;
    esac
}
#}}}

[ "$0" = "-$(basename $(echo "$SHELL"))" ] && startx # If login shell, run startrx
