## Objective

Provide quick and easy startup process for getting preferences onto new machine.

## Startup

1. To get zsh profile working correctly (dependent on hardcoded ".dotfiles" directory; install zsh; symlink .zshenv;)
2. To get iTerm preferences working correctly (iTerm preferences => load preferences from hardcoded `.dotfiles/` directory)
3. To get Vim preferences working correctly (symlink `.vimrc` to hardcoded `.dotfiles/.vimrc`)

## Known ToDo's
1. Provide better [startup](#startup) instructions
  * Create necessary symlinks
  * Download iTerm, zsh, BetterTouchTool
  * MUST manually create the symlinks for links in `.zprezto`
    * Or figure out some way to make the symlinks independent of user (eg `cole.bittel` vs `ColeBittel` on different machines)
2. Do I want to be able to scroll through zsh history of what's already typed, using up and down arrows?
  * Can pretty much do this with the `Esc` + `?`
3. Valid commands should appear a different color once completed typing
  * Perhaps invalid commands should also appear a bad color
  * Eg. typing `vim `, would show `vim` word as nice pink or something
  * Eg. typing `vimmmm ` would show `vimmm` as nasty red

