# Dotfiles of keyraphi
Clone with submodules via
```bash
git clone --recurse-submodules git@github.com:keyraphi/dotfiles.git
```
The setup uses the dracula theme, which can also be installed for
the gnome-terminal as described [here](https://draculatheme.com/gnome-terminal).

## Neovim
Make sure to have the latest neovim build!
Create a link in your `~/.config/` directory to the nvim directory:
```bash
ln -s /path/to/this/nvim ~/.config/nvim
```
I use [Packer](https://github.com/wbthomason/packer.nvim) as plugin manager -
install it.

Open neovim, ignore the errors you get. They come from required plugins that
are not yet installed.

Run `:PackerSync`

Install desired language servers via :LspInstallInfo.

Check the `mappings` and the `xxx-config` files to learn the keybindings.

## Kitty
Kitty is a modern terminal. This is how you get my configuration.
Create a link in your `~/.config/` directory to the kitty directory:
```bash
ln -s /path/to/this/kitty ~/.config/kitty
```

You need a [NerdFont](https://github.com/ryanoasis/nerd-fonts).
I use Hack, which you can get from [the release Page on GitHub](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack). If you want to use another font you have to change it in the
configuration.

## Tmux
Link `tmux.conf`, `tmux-cssh` and `tmux` to `~/.tmux.conf`, `~/.tmux-cssh` and
`~/.tmux/` respectively.

```bash
ln -s /path/to/this/tmux.conf ~/.tmux.conf
ln -s /path/to/this/tmux-cssh ~/.tmux-cssh
ln -s /path/to/this/tmux ~/.tmux
```
I use the [tmux plugin manager](https://github.com/tmux-plugins/tpm).
Which is included in the `.tmux` directory.

For tmux-cssh install clone the [tmux-cssh](https://github.com/peikk0/tmux-cssh) repository and add it to your `$PATH` variable.

Start tmux and install plugins via `<leader>+I`(capital i). It first looks like nothing is happening... give it 30sec.

I assume you use `zsh` as shell. If you prefere bash remove the corresponding line in `.tmux.conf`.
