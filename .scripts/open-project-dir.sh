#!/bin/bash

cd ~/Projects

DIR_PATH=$(fd --type directory --hidden --exclude .git --exclude .cache --exclude node_modules --exclude .npm --exact-depth 1 . | fzf -m --no-info --height=10)

if [[ -n "$DIR_PATH" ]]; then
    cd "$DIR_PATH" || return
fi

return
