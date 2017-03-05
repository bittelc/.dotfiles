## Objective

Provide quick and easy startup process for getting preferences onto new machine.

## Startup

First, clone this repo into `$HOME` directory

1. To get zsh profile working correctly (dependent on hardcoded ".dotfiles" directory; install zsh; symlink .zshenv;)
2. To get iTerm preferences working correctly (iTerm preferences => load preferences from hardcoded `.dotfiles/` directory)
3. Vim
  1. Download and install [`vim-pathogen`](https://github.com/tpope/vim-pathogen)
  2. `ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc`

## Known ToDo's
1. Provide better [startup](#startup) instructions
  * Create necessary symlinks
  * Download iTerm, zsh, BetterTouchTool
2. Make VM capabilities in `.zshenv` not so ugly
  * Eg. currently dependent upon `/host-data`, but what if VM doesn't use `/host-data`

