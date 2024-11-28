#!/bin/bash
tmux has-session -t Painless
if [[ $? != 0 ]]
then
    tmux detach
    tmux new-session -s Painless -n Editor -d
    tmux split-window -v -l 5 -t Painless
    tmux send-keys -t Painless:1.1 'nvim' C-m
fi
tmux attach -t Painless
