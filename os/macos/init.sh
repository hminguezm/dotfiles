#!/bin/bash

BREW="$(which brew)"
_steps(){
    source "$DOTFILES_PATH/shell/zsh/installer.sh"
    echo "symlinks..."
    source syslinks/macos.zsh
    echo "Installing lsd https://github.com/Peltoche/lsd..."
    brew install --cask lsd
}

if [ "BREW" == " " ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" && brew outdated
  _steps
else
  echo "${BREW} found..."
  _steps
fi


