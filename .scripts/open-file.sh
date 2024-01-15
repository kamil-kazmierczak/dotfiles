#!/bin/bash

cd ~

FILE_PATH=$(fd --type f --hidden --exclude .git --exclude node_modules | fzf -m --height=20 --border=double --border-label=" Open text file " --border-label-pos=0:top --margin=1,5% --no-info --no-scrollbar --prompt='> ' --pointer='->' --marker='*' --tabstop=4)


if [[ -n "$FILE_PATH" ]]; then	
    nvim $FILE_PATH
fi

exit 0
