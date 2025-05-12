#!/bin/bash

# Check if session name is provided, otherwise use 'foo' as default
SESSION_NAME=${1:-foo}

# Save the current directory
CURRENT_DIR=$(pwd)

# Start a new tmux session with the provided or default session name, in detached mode
tmux new-session -d -s "$SESSION_NAME" -n "nvim" -c "$CURRENT_DIR"

# Create additional named windows in the same directory
tmux new-window -t "$SESSION_NAME":2 -n "term" -c "$CURRENT_DIR"
tmux new-window -t "$SESSION_NAME":3 -n "xtra" -c "$CURRENT_DIR"

# Go back to the first window (nvim)
tmux select-window -t "$SESSION_NAME":1

# Attach to the session
tmux attach-session -t "$SESSION_NAME"
