# dot-files

Hello there,

Thanks for stopping by. There is how I configured my coding environment. - z-shell : .zshrc

The old me used to track my whole home folder with git but now I am a changed man after I discoverd gnu-stow.
Also use a setup script to clone dependencies instead of using git submodules

#### Usage

- `cd $HOME` then `git clone https://github.com/colleowino/dot-files.git`
- Fetch dependencies: `./dotfiles/bash/setup`
- `sudo apt-get install stow`
  - Better to do this on a fresh install if not you will need to delete files that will then be replaced by these configs.
- `cd dot-files`

- copy the configs `stow -v */`

- Open vim and `PlugInstall` to pull all extensions via vim-plug

#### Optional

##### Keyboard bindings

- I have also backed up my keyboard shortcuts in `custom-keybindings.dconf` through
  `dconf dump '/org/gnome/settings-daemon/plugins/media-keys/' > custom-keybindings.dconf`
  to be restored using
  ` dconf load '/org/gnome/settings-daemon/plugins/media-keys/' < custom-keybindings.dconf`

##### Terminal profiles.

- Requires [Jetbrains Mono](https://www.jetbrains.com/lp/mono/)

- Saved in `gnome_terminal_settings_backup.dconf` through
  `dconf dump /org/gnome/terminal/ > gnome_terminal_settings_backup.dconf `
  to be restored using
  `dconf load /org/gnome/terminal/ < gnome_terminal_settings_backup.dconf `

### Looks

- I use vim-gnome with gruvbox colors and [light line](https://github.com/itchyny/lightline.vim) as my status bar.

![What you should expect](my_config.png)

[![forthebadge](https://forthebadge.com/images/badges/makes-people-smile.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/powered-by-black-magic.svg)](https://forthebadge.com)
