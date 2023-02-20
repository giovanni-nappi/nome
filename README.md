# My dotfiles repo

Heavily inspired by Luc Perkins' [nome](https://github.com/the-nix-way/nome).

## Start
1. Install `nix` package:
```sh
sh <(curl -L https://nixos.org/nix/install) --daemon
```
2. Enable flakes, by creating the file `~/.config/nix/nix.conf ` with content:
```
experimental-features = nix-command flakes
```
3. Build and activate:
```sh
nix build "github:giovanni-nappi/nome#homeConfigurations.giovanni.activationPackage" && ./result/activate && rm result
```
or, locally:
```sh
nix build ".#homeConfigurations.giovanni.activationPackage" && ./result/activate && rm result
```
4. When you modify your home, launch:
```sh
home-manager switch --flake .#giovanni
```
