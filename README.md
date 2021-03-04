# Dotfiles 🎉

My very own dotfile repo for keeping track of configurations across systems. I try to keep the OS specific settings seperate. You're welcome to use this repo for for inspiration, and copy whatever you want. If you want to create your own dotfile repo, you should read [this](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/).

### What's a dotfile?

> _noun_: A file or directory whose name begins with a dot (period or full stop), typically hidden from view. [⎋](https://www.wordnik.com/words/dotfile)

> User-specific application configuration is traditionally stored in so called dotfiles. It is common practice to track dotfiles with a version control system such as Git to keep track of changes and synchronize dotfiles across various hosts. [⎋](https://wiki.archlinux.org/index.php/Dotfiles)

## Installation
_Disclaimer: You probably shouldn't. These config files contain lots of settings that might only work on my machine. They are meant to replace the config files that are already on your computer, so things will probably break._

1. The dotfiles will be placed relative to `~/`, so make sure you are logged in with the right user, or change the `clean` value in the `install-[OS].conf.yaml` file.
2. Clone this repo to a place where you want to keep it permanently. A symlink to the folder will be placed at `~/.dotfiles`.
3. Run `./install-[OS]`

### Sublime Text 3
To install the config files for Sublime Text 3, a few additional steps is required.

1. Install Sublime Text 3
2. Remove the `User` folder (Located at `~/Library/Application Support/Sublime Text 3/Packages/User` on macOS).
3. Run `./install-[OS]`
4. Make sure [Package Control](https://packagecontrol.io) is installed 

## Credits
I use Dotbot by Anish Athalye to handle installation: 
https://github.com/anishathalye/dotbot
