USAGE

git clone the repo

Use GNU stow
```sh
yay stow

```
An example usage:

```sh
stow dwm_srcs

```
Build the source files using make with root privileges.

```sh

sudo make clean install

```

Stow zsh and source to add path variables and other configurations

```sh
stow zsh
source .zshrc

```

Make them executable

```sh

chmod +x ~/.config/.local/scripts/*

```

Install dependecies

[TODO]: Add all the dependecies

CREDIT

- Github: [Bread On Penguins] [Github]
- Youtube: [Bread On Penguins] [Youtube]

[Github]: https://github.com/BreadOnPenguins
[Youtube]: https://www.youtube.com/@BreadOnPenguins

- Dwmblocks-async: [UtkarshVerma] [Github]

[Github]: https://github.com/UtkarshVerma/dwmblocks-async

- Statusbar: [Luke Smith] [Github]

[Github]: https://github.com/LukeSmithxyz/voidrice/tree/master/.local/bin/statusbar
