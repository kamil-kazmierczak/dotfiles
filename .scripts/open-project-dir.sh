#!/bin/bash

cd ~

DIR_PATH=$(fd --type directory --hidden --exclude .git --exclude .cache --exclude node_modules --exclude .npm | fzf -m --no-info --height=10)

if [[ -n "$DIR_PATH" ]]; then	
    cd $DIR_PATH || return
fi

return
