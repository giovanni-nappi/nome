{ pkgs, ... }: {
  imports = [
    ./bat.nix
    ./bin.nix
    ./exa.nix
    ./fzf.nix
    ./git.nix
    ./go.nix
    ./kitty.nix
    ./tmux.nix
    ./zk.nix
    ./zoxide.nix
    ./zsh.nix
  ];
  home.packages = with pkgs; [
    comma # Install and run programs by sticking a , before them
    distrobox # Nice escape hatch, integrates docker images with my environment

    bc # Calculator
    bottom # System viewer
    fd # Better find
    powerline-fonts
    httpie # Better curl
    k9s
    jq # JSON pretty printer and manipulator
    ncdu # TUI disk usage
    ripgrep # Better grep

    nil # Nix LSP
    nixfmt # Nix formatter

    ltex-ls # Spell checking LSP
  ];
}
