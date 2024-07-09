# Dotfiles

My [dotfiles](https://wiki.archlinux.org/title/Dotfiles) for `macOS`.

## Bootstrap

[bootstrap](./bootstrap.sh) is an all-in-one script to download [chezmoi](https://www.chezmoi.io/) and [age](https://github.com/FiloSottile/age) and initialize chezmoi with this repository.

```sh
wget -q https://raw.githubusercontent.com/kwanpham2195/dots/main/bootstrap.sh -O /tmp/bootstrap.sh
chmod +x /tmp/bootstrap.sh
bash -c /tmp/./bootstrap.sh
```

Tested with macOS on Apple Silicone.

**Regarding the included brewfile keep in mind that Brew on Linux only supports amd64 on Linux**

## Neovim

My Neovim setup is in its own [repo](https://github.com/kwanpham2195/nvim)

## Common Commands

Edit file: `chezmoi edit --apply $FILE`
Add file from home dir to source dir: `chezmoi add $FILE`

## Encryption

https://www.chezmoi.io/user-guide/frequently-asked-questions/encryption/
