#!/bin/bash
tmux has-session -t Painless
if [[ $? != 0 ]]
then
    tmux detach
    tmux new-session -s Painless -n Editor -d
fi
tmux attach -t Painless
