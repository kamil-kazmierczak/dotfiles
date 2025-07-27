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
