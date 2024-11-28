#!/bin/bash
tmux has-session -t DSA 2>/dev/null
if [[ $? != 0 ]]; then
    cd ~/Documents/Coding/DSA
    # tmux detach
    tmux new-session -s DSA -n Editor -d
    tmux split-window -v -l 23% -t DSA
    tmux send-keys -t DSA:1.1 'nvim' C-m
fi
tmux attach -t DSA
