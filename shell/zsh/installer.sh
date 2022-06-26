#!/bin/bash
ZSH_CUSTOM=$HOME/.config/zsh/custom

ZSH="$(which zsh)"

_plugins(){
  echo "Installing spaceship theme in ${ZSH_CUSTOM}..."
  git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
  echo "Installing zsh-syntax-highlighting plugin in ${ZSH_CUSTOM}..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
}

if [ "$ZSH" == " " ]; then
  echo "Installing zsh..."
  brew install --cask zsh
  echo "Add zsh as default SHELL"
  /bin/bash -c "echo $(which zsh)" >> /etc/shells && chsh -s "$(which zsh)"
  _plugins
else
  echo "Error: ${ZSH_CUSTOM} not found..."
  _plugins
fi
