#!/bin/bash
# Set some configuration options
SESSION=${PWD##*/} 

clean() {
    SESSION=${1//[^[:alnum:]]/}
}

clean $SESSION

# Create a new, detached session
tmux new-session -d -s $SESSION

tmux new-window -t $SESSION:1 -n 'editor'
tmux select-window -t $SESSION:1
tmux send-keys 'vim' 'C-m'
tmux rename-window 'editor'

tmux new-window -t $SESSION:2 -n '2'
tmux new-window -t $SESSION:3 -n '3'
tmux new-window -t $SESSION:4 -n '4'

tmux select-window -t $SESSION:1

# Attach to the session
tmux attach-session -t $SESSION


