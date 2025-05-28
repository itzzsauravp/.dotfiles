#!/bin/bash

DOTFILES_DIR="$HOME/github/.dotfiles"
BACKUP_DIR="$HOME/.dotfiles_backup"

echo -e "\n +++++++++++ Starting dotfiles sync... ++++++++++\n"

mkdir -p "$BACKUP_DIR"

# Helper: Link a file with backup
link_file() {
  src="$1"
  dest="$2"

  if [ -e "$dest" ] || [ -L "$dest" ]; then
    echo "========== Backing up $dest =========="
    mv "$dest" "$BACKUP_DIR/"
  fi

  dest_dir=$(dirname "$dest")
  mkdir -p "$dest_dir"

  ln -s "$src" "$dest"
  echo "********** Linked $dest → $src **********"
}

echo "!!!!!!!!!! Linking configuration files... !!!!!!!!!!"
link_file "$DOTFILES_DIR/config/nvim" "$HOME/.config/nvim"
link_file "$DOTFILES_DIR/config/starship.toml" "$HOME/.config/starship.toml"
link_file "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"
link_file "$DOTFILES_DIR/tmux.sh" "$HOME/tmux.sh"
link_file "$DOTFILES_DIR/config/kitty" "$HOME/.config/kitty"
link_file "$DOTFILES_DIR/config/lazygit" "$HOME/.config/lazygit"
link_file "$DOTFILES_DIR/config/waybar" "$HOME/.config/waybar"
link_file "$DOTFILES_DIR/config/hypr" "$HOME/.config/hypr"
link_file "$DOTFILES_DIR/config/wofi" "$HOME/.config/wofi"

echo -e "\n (; Dotfiles sync complete!\n"
# NOTE: This syslink doesnot work (not possible from windows <-> linux), its added here to know where to keep the files.

# link_file "$DOTFILES_DIR/config/glazeWM/config.yaml" "/mnt/c/Users/<your_user>/.glzr/glazewm/config.yaml"
# link_file "$DOTFILES_DIR/config/.wezterm.lua" "/mnt/c/Users/<your_user>/.wezterm.lua
