#!/bin/bash

# Set the path to your dotfiles repository
DOTFILES_PATH="~/lbrm/dotfiles"

# Set the home directory
HOME_DIR="$HOME"

# Function to create a symbolic link
create_symlink() {
  source_file="$1"
  target_file="$2"

  # Backup existing file if it exists
  if [ -e "$target_file" ]; then
    mv "$target_file" "${target_file}.bak"
    echo "Backed up existing $target_file to ${target_file}.bak"
  fi

  # Create symbolic link
  ln -s "$source_file" "$target_file" && echo "Created symlink: $target_file -> $source_file"
}

# Create symlinks for .config directory
create_symlink "$DOTFILES_PATH/.config/nvim" "$HOME_DIR/.config/nvim"
create_symlink "$DOTFILES_PATH/.config/picom/picom.conf" "$HOME_DIR/.config/picom/picom.conf"
create_symlink "$DOTFILES_PATH/.config/polybar/config.ini" "$HOME_DIR/.config/polybar/config.ini"
create_symlink "$DOTFILES_PATH/.config/alacrity/alacritty.toml" "$HOME_DIR/.config/alacrity/alacritty.toml"
create_symlink "$DOTFILES_PATH/.config/i3/config" "$HOME_DIR/.config/i3/config"

# Create symlinks for root directory files
create_symlink "$DOTFILES_PATH/.tmux.conf" "$HOME_DIR/.tmux.conf"
create_symlink "$DOTFILES_PATH/.zshrc" "$HOME_DIR/.zshrc"
create_symlink "$DOTFILES_PATH/.zprofile" "$HOME_DIR/.zprofile"
create_symlink "$DOTFILES_PATH/.xinitrc" "$HOME_DIR/.xinitrc"
