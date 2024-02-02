#!/bin/bash

cd ~

FILE_PATH=$(fd --type f --hidden --exclude .git --exclude node_modules --exclude .npm | fzf -m --height=20)

if [[ -n "$FILE_PATH" ]]; then	
    nvim $FILE_PATH
fi

exit 0
