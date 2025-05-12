#!/bin/bash

DOTFILES_DIR="$HOME/github/.dotfiles"
BACKUP_DIR="$HOME/.dotfiles_backup"

echo "🔁 Syncing dotfiles..."

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Helper: Link a file with backup
link_file() {
  src="$1"
  dest="$2"

  # If the destination exists, back it up and move it
  if [ -e "$dest" ] || [ -L "$dest" ]; then
    echo "📦 Backing up $dest"
    mv "$dest" "$BACKUP_DIR/"
  fi

  # Create a symlink from source to destination
  ln -s "$src" "$dest"
  echo "🔗 Linked $dest → $src"
}

# Link configs
link_file "$DOTFILES_DIR/config/nvim" "$HOME/.config/nvim"
link_file "$DOTFILES_DIR/config/starship.toml" "$HOME/.config/starship.toml"
link_file "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"

# Link wezterm (adjust this for your Windows path, if needed)
link_file "$DOTFILES_DIR/config/wezterm.lua" "/mnt/c/Users/gamef/.wezterm.lua"

# Git push if desired
echo "📤 Pushing to Git..."
cd "$DOTFILES_DIR" && git add . && git commit -m "sync: updated dotfiles" && git push

echo "✅ Done!"

