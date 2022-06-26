ulimit -n 200000
ulimit -u 2048

# Enable aliases to be sudo
alias sudo='sudo '

# ------------------
# Initialize custom aliases
# ------------------
for aliasToSource in "$DOTFILES_PATH/shell/_aliases/"*; do source "$aliasToSource"; done

# ------------------
# Initialize custom exports
# ------------------
for exportToSource in "$DOTFILES_PATH/shell/_exports/"*; do source "$exportToSource"; done

# ------------------
# Initialize custom functions
# ------------------
for functionsToSource in "$DOTFILES_PATH/shell/_functions/"*; do source "$functionsToSource"; done

