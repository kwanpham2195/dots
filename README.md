# Dotfiles

My [dotfiles](https://wiki.archlinux.org/title/Dotfiles) for `macOS` and `Linux` (primarily MacOS).

## Bootstrap

[bootstrap](./bootstrap.sh) is an all-in-one script to download [chezmoi](https://www.chezmoi.io/) and [age](https://github.com/FiloSottile/age) and initialize chezmoi with this repository.

```sh
wget -q https://raw.githubusercontent.com/kwanpham2195/dots/main/bootstrap.sh -O /tmp/bootstrap.sh
chmod +x /tmp/bootstrap.sh
bash -c /tmp/./bootstrap.sh
```

Tested with Arch Linux and macOS on Apple Silicone. Should work with most Linux variants.

**Regarding the included brewfile keep in mind that Brew on Linux only supports amd64 on Linux**

## Neovim

My Neovim setup is in its own [repo](https://github.com/kwanpham2195/nvim)
