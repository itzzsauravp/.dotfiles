#!/bin/bash

SESSION_NAME=${1:-foo}

# If session exists, attach
if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
  tmux attach -t "$SESSION_NAME"
  exit 0
fi

# Create session with windows
tmux new-session -d -s "$SESSION_NAME" -n "nvim" \
  \; new-window -n "term" \
  \; new-window -n "xtra" \
  \; new-window -n "kitty" \
  \; select-window -t 1

# Attach
tmux attach -t "$SESSION_NAME"
