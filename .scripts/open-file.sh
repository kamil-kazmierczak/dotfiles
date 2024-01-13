#!/bin/bash

cd
FILE_PATH=$(fzf -m --height=20 --border=double --border-label=" Search file " --border-label-pos=0:top --margin=1,5% --no-info --no-scrollbar --prompt='> ' --pointer='->' --marker='*' --tabstop=4)

echo $FILE_PATH

if [[ -n "$FILE_PATH" ]]; then	
	nvim $FILE_PATH
fi
