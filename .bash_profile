# Base16 colorshemes
# https://github.com/chriskempson/base16-shell
# execute: "base16_oceanicnext" after installation
BASE16_SHELL=$HOME/.config/base16-shell/

# font: Menlo, installed from

alias vi="nvim"

[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*