# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export DOTFILES_PATH=$HOME/.dotfiles

ZSH_THEME="spaceship"

# Async mode for autocompletion
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=60"
ZSH_HIGHLIGHT_MAXLENGTH=300

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $DOTFILES_PATH/terminal/init.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set Spaceship ZSH as a prompt
autoload -Uz promptinit; promptinit
prompt spaceship

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/hminguezm/Documents/RipleyLabs/ripley-jobs-inventory/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/hminguezm/Documents/RipleyLabs/ripley-jobs-inventory/node_modules/tabtab/.completions/serverless.zsh

# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/hminguezm/Documents/RipleyLabs/ripley-jobs-inventory/node_modules/tabtab/.completions/sls.zsh ]] && . /home/hminguezm/Documents/RipleyLabs/ripley-jobs-inventory/node_modules/tabtab/.completions/sls.zsh