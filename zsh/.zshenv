#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
# CB –
# This file must be symlinked to home directory in order to pull Dropbox Prezto configuration
# $ ln -s ~/Dropbox/Computer\ Preferences/zsh/.zprezto/runcoms/zshenv ~/.zshenv
# 
# Unsure, but may also need to $ sudo mv /etc/zprofile /etc/zshenv
# This appears to be an issue related to El Capitan. Followed these instructions per chat room in SO.
# http://chat.stackoverflow.com/rooms/92663/discussion-between-cole-bittel-and-4ae1e1


# Ensure that a non-login, non-interactive shell has a defined environment.
export ZDOTDIR="$HOME/Dropbox/Computer Preferences/zsh"
if [[ "$SHLVL" -eq 1 && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
  PATH=$HOME/bin:/usr/local/opt/coreutils/libexec/gnubin:$HOME/.rbenv/shims:$HOME/.rbenv/bin:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:$PATH
fi
