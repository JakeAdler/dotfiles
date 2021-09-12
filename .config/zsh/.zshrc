source "$XDG_CONFIG_HOME/zsh/antibody/plugins.sh"
source "$HOME/.profile"

autoload -U promptinit; promptinit
autoload -Uz compinit; compinit

# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.history
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

eval "$(starship init zsh)"
