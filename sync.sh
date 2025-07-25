#!/bin/bash

DOTFILES_DIR="$HOME/github/.dotfiles"
BACKUP_DIR="$HOME/.dotfiles_backup"
SYSTEMUI_DIR="$HOME/SystemUI"

echo -e "\n +++++++++++ Starting dotfiles sync... ++++++++++\n"

mkdir -p "$BACKUP_DIR"

if [ ! -d "$SYSTEMUI_DIR" ]; then
  echo "Creating $SYSTEMUI_DIR and subfolders .... Documents, Downloads, Pictures, Screenshots"
  mkdir -p "$SYSTEMUI_DIR"/{Documents,Downloads,Pictures,Screenshots}
else
  echo "$SYSTEMUI_DIR already exists, skipping creation..."
fi



# Helper: Link a file with backup
link_file() {
  src="$1"
  dest="$2"

  if [ -L "$dest" ] && [ "$(readlink "$dest")" = "$src" ]; then
    echo "✔ $dest already linked → $src"
    return
  fi

  if [ -e "$dest" ] || [ -L "$dest" ]; then
    echo "⚠️ Backing up $dest to $BACKUP_DIR"

    # Avoid infinite nesting
    if [[ "$dest" == "$BACKUP_DIR"* ]]; then
      echo "⛔ Skipping backup of $dest (already in backup dir)"
    else
      mv "$dest" "$BACKUP_DIR/"
    fi
  fi

  mkdir -p "$(dirname "$dest")"
  ln -s "$src" "$dest"
  echo "✅ Linked $dest → $src"
}


echo "!!!!!!!!!! Linking configuration files... !!!!!!!!!!"
link_file "$DOTFILES_DIR/config/nvim" "$HOME/.config/nvim"
link_file "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"
link_file "$DOTFILES_DIR/tmux.sh" "$HOME/tmux.sh"
link_file "$DOTFILES_DIR/config/kitty" "$HOME/.config/kitty"
link_file "$DOTFILES_DIR/config/lazygit" "$HOME/.config/lazygit"
link_file "$DOTFILES_DIR/config/hypr" "$HOME/.config/hypr"
link_file "$DOTFILES_DIR/config/fuzzel" "$HOME/.config/fuzzel"
link_file "$DOTFILES_DIR/config/swaync" "$HOME/.config/swaync"
link_file "$DOTFILES_DIR/config/waybar" "$HOME/.config/waybar"
link_file "$DOTFILES_DIR/config/wallpapers/wallpaper.png" "$HOME/SystemUI/Pictures/wallpaper.png"

echo -e "\n (; Dotfiles sync complete!\n"
# NOTE: This syslink doesnot work (not possible from windows <-> linux), its added here to know where to keep the files.

# link_file "$DOTFILES_DIR/config/glazeWM/config.yaml" "/mnt/c/Users/<your_user>/.glzr/glazewm/config.yaml"
# link_file "$DOTFILES_DIR/config/.wezterm.lua" "/mnt/c/Users/<your_user>/.wezterm.lua
