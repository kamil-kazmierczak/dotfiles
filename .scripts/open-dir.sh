#!/bin/bash

cd ~

DIR_PATH=$(fd --type directory --exclude .git --exclude .cache --exclude node_modules | fzf -m --height=20 --border=double --border-label=" Open directory " --border-label-pos=0:top --margin=1,5% --no-info --no-scrollbar --prompt='> ' --pointer='->' --marker='*' --tabstop=4)

if [[ -n "$DIR_PATH" ]]; then	
    cd $DIR_PATH || return
fi

return
