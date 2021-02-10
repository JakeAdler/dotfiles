#!/bin/bash

export EDITOR='nvim'
export BROWSER='brave'
export TERM='kitty'

alias java="archlinux-java"
alias tp="trash-put"
alias rm="echo 'Use tp instead'"

source $HOME/.config/shell/git_prompt.sh
PROMPT_COMMAND='__git_ps1 "\[\033[35m\]❯ \[\033[00m\]" "\[\033[34m\]\w\[\033[00m\] "'

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}"  ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
