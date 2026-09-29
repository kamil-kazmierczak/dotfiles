First of all you need to install ```stow```:
```
sudo pacman -S stow
cd ~/Projects
```


Next step - clone dotfiles repository:
```
git clone git@github.com:kamil-kazmierczak/dotfiles.git

cd dotfiles
```

If you want to stow only .config catalog:
```
stow -t ~/.config .config
```

If you want to stow all:
```
stow -t ~ .
```
You may probably need to remove files that already exist (etc. .zshrc)

## Ghostty fonts on macOS

Install the Nerd Fonts with Homebrew:

```sh
brew install --cask font-caskaydia-cove-nerd-font
brew install --cask font-jetbrains-mono-nerd-font
```

The current [Ghostty configuration](.config/ghostty/config) uses `CaskaydiaCove Nerd Font Mono`. To try JetBrains Mono instead, set:

```ini
font-family = JetBrainsMono Nerd Font Mono
```

Restart Ghostty after installing a font. If the `ghostty` command is available, check the exact font family names with:

```sh
ghostty +list-fonts | grep -Ei 'Caskaydia|JetBrains'
```
