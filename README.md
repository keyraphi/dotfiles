# Dotfiles of keyraphi
Clone with submodules via
```bash
git clone --recurse-submodules git@github.com:keyraphi/dotfiles.git
```

## Neovim
Create a link in your `~/.config/` directory to the nvim directory:
```bash
ln -s /path/to/this/nvim ~/.config/nvim
```
Open neovim and run `:PlugInstall`

## Kitty
Create a link in your `~/.config/` directory to the kitty directory:
```bash
ln -s /path/to/this/kitty ~/.config/kitty
```

Install the latest JetBrainsMono font to get the airline symbols:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
```

## Tmux
Link `tmux.conf`, `tmux-cssh` and `tmux` to `~/.tmux.conf`, `~/.tmux-cssh` and
`~/.tmux/` respectively.

```bash
ln -s /path/to/this/tmux.conf ~/.tmux.conf
ln -s /path/to/this/tmux-cssh ~/.tmux-cssh
ln -s /path/to/this/tmux /.tmux
```
