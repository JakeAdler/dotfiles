#!/bin/sh

ANTIBODY_PATH="$HOME/.config/zsh/antibody/"

antibody bundle < "$ANTIBODY_PATH/plugins.txt" > "$ANTIBODY_PATH/plugins.sh"
