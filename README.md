# Dotfiles

My own dotfile repo for keeping track of configs across systems. I try to keep the OS specific settings seperate, while sharing what's possible.

## Installation
1. The dotfiles will be placed at `~/`, so make sure you are logged in with the right user, or change the `clean` value in the `install-[OS].conf.yaml` file.

2. Clone this repo to a place where you want to keep it permanently. A symlink to the folder will be placed at `~/.dotfiles`.

3. Run
```
./install-[OS]
```

# Credits
I use Dotbot by Anish Athalye to handle installation: 
https://github.com/anishathalye/dotbot
