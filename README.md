# My dotfiles repo

Heavily inspired by Luc Perkins' [nome](https://github.com/the-nix-way/nome) and
Gabriel Fontes' [nix-config](https://github.com/Misterio77/nix-config).
Neovim configuration inspired by Allan's [config](https://github.com/Allaman/nvim).

## Start
1. Install `nix` package:
```sh
sh <(curl -L https://nixos.org/nix/install) --daemon
```
2. Build and activate:
```sh
nix build "github:giovanni-nappi/nixed#homeConfigurations."username@machine".activationPackage" && \\
  ./result/activate && \\
  rm result
```
or, locally:
```sh
nix build ".#homeConfigurations."username@machine".activationPackage" && \\
  ./result/activate && \\
  rm result
```
3. When you modify your home, launch:
```sh
home-manager switch --flake .#username@machine
```
