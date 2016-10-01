
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# iTerm2 Shell Integration files
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias 'll=ls -lah'

# Figure out how to make this check for rbenv first, then only apply if rbenv present
# Don't upload to Github until this `if` is complete
if hash rbenv 2>/dev/null; then
  eval "$(rbenv init -)"
fi

# Use VI-type key bindings, rather than the default emacs
# Can switchback to emacs with `bindkey -e`
bindkey -v
# Blinking parenthesis
set blink-matching-paren on
