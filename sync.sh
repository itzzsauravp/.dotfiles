#!/bin/bash

DOTFILES_DIR="$HOME/github/.dotfiles"
BACKUP_DIR="$HOME/.dotfiles_backup"
COMMIT_MSG=${1:-"sync: update dotfiles"}

echo -e "\n🔁 Starting dotfiles sync...\n"

mkdir -p "$BACKUP_DIR"

# Helper: Link a file with backup
link_file() {
  src="$1"
  dest="$2"

  if [ -e "$dest" ] || [ -L "$dest" ]; then
    echo "📦 Backing up $dest"
    mv "$dest" "$BACKUP_DIR/"
  fi

  dest_dir=$(dirname "$dest")
  mkdir -p "$dest_dir"

  ln -s "$src" "$dest"
  echo "🔗 Linked $dest → $src"
}

echo "🔗 Linking configuration files..."
link_file "$DOTFILES_DIR/config/nvim" "$HOME/.config/nvim"
link_file "$DOTFILES_DIR/config/starship.toml" "$HOME/.config/starship.toml"
link_file "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"
link_file "$DOTFILES_DIR/tmux.sh" "$HOME/tmux.sh"
link_file "$DOTFILES_DIR/config/wezterm.lua" "/mnt/c/Users/your_user/AppData/Local/wezterm/wezterm.lua"

echo -e "\n📤 Pushing to Git with commit message: \"$COMMIT_MSG\""
cd "$DOTFILES_DIR" && git add . && git commit -m "$COMMIT_MSG" && git push
echo -e "\n✅ Dotfiles sync complete!\n"
