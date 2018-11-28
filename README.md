## Objective

Provide quick and easy startup process for getting preferences onto new machine.

## Startup

1. Clone this repo into `$HOME` directory
    * `git clone git@github.com:bittelc/.dotfiles.git ~/.dotfiles`
1. To get zsh profile working correctly (dependent on hardcoded ".dotfiles" directory; install zsh; symlink .zshenv;)
    1. Install zsh (`brew install zsh`)
    1. `ln -s ~/.dotfiles/zsh/.zshenv ~/.zshenv`
    1. Install [Powerline fonts](https://github.com/powerline/fonts)
    1. Modify iTerm profile to use Powerline fonts
         1. Preferences => Profiles => Text
         1. Font and Non-ASCII Font should be modified to use "14pt Meslo LG S DZ Regular for Powerline"
2. To get iTerm preferences working correctly (iTerm preferences => load preferences from hardcoded `.dotfiles/` directory)
3. Git
    1. `ln -s ~/.dotfiles/git/.global_gitconfig ~/.gitconfig`
    2. `ln -s ~/.dotfiles/git/.gitignore_global ~/.gitignore_global`

3. Vim
   1. [Update Vim to 8.0+](https://stackoverflow.com/questions/39861793/how-update-vim-to-8-0-version-in-osx)
   1. Download and install [`vim-pathogen`](https://github.com/tpope/vim-pathogen)
   2. `ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc`
   3. Symlink Pathogen directory: `ln -s ~/.dotfiles/vim ~/.vim`
   4. Init all submodules in this repo: `.dotfiles$ git submodule update --init --recursive`
   5. Update all submodules in this repo: `.dotfiles$ git submodule update --recursive --remote`
1. Setup all your other good shit
   1. [Gregory Colbert screensaver](https://gregorycolbert.com/screensaver.php)
   1. BetterTouchTool
   1. 1Password


## Adding Vim Plugins

To add a plugin to VIM (via Pathogen):

1. `git clone` to the usual location (`~/.vim/bundle`) which is a symlink to this repo's `vim/bundle` directory.
2. Rather than `git add .` this new bundle: `git submodule add <git@github.com url> vim/bundle/<plugin name>`
    * Eg. `git submodule add git@github.com:fatih/vim-go.git vim/bundle/vim-go`
3. `git commit -am "Add <plugin> as submodule for Vim"`

## Known ToDo's
1. Provide better [startup](#startup) instructions
    * Download iTerm, zsh, BetterTouchTool

