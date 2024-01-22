#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="brave"

if [[ "$(tty)" = "/dev/tty1" ]]; then
  pgrep i3 || startx
fi
