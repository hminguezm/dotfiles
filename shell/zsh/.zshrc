export DOTFILES_PATH="$HOME/.dotfiles"

HISTFILE="~/.zsh_history"
HISTSIZE=999999999
SAVEHIST="$HISTSIZE"

# ------------------
# Initialize aliases, exports and custom functions
# ------------------
source $DOTFILES_PATH/shell/init.zsh

# ------------------
# Initialize plugins
# ------------------
source $DOTFILES_PATH/shell/zsh/plugins/init.zsh

# ------------------
# Initialize themes
# ------------------
source $DOTFILES_PATH/shell/zsh/themes/init.zsh

