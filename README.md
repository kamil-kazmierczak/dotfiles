First of all you need to install ```stow```:
```
sudo pacman -S stow
```

Next step:
```
cd ~/Projects
git clone git@github.com:kamil-kazmierczak/dotfiles.git
git clone git@github.com:kamil-kazmierczak/nvim.git

cd dotfiles
```

If you want to stow only .config catalog:
```
stow ~/.config .config
```

If you want to stow all:
```
stow .
```

