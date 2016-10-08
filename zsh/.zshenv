#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
# CB –
# This file must be symlinked to home directory in order to pull Dropbox Prezto configuration

# Ensure that a non-login, non-interactive shell has a defined environment.
export ZDOTDIR="$HOME/.dotfiles/zsh"

if [[ "$SHLVL" -eq 1 && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
  PATH=$HOME/bin:/usr/local/opt/coreutils/libexec/gnubin:$HOME/.rbenv/shims:$HOME/.rbenv/bin:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:$PATH
fi
