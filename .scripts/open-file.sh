#!/bin/bash

cd ~

FILE_PATH=$(fdfind --type f --hidden --exclude logseq --exclude .git --exclude node_modules --exclude .npm | fzf -m --height=10 --no-info)


   
if [[ -n "$FILE_PATH" ]]; then	
    nvim $FILE_PATH
fi

exit 0
