{ inputs, lib, pkgs, config, outputs, ... }:
{
  imports = [
    ../features/cli
    ../features/nvim
  ];

  nixpkgs = {
    overlays = builtins.attrValues outputs.overlays ++ [
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.master
    ];
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  nix = {
    package = lib.mkDefault pkgs.nix;
    settings = {
      experimental-features = [ "nix-command" "flakes" "repl-flake" ];
      warn-dirty = false;
    };
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # Enable home-manager
  programs = {
    home-manager.enable = true;
  };

  fonts.fontconfig.enable = true;
  home.packages = [
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];

  home = {
    username = lib.mkDefault "giovanni";
    homeDirectory = lib.mkDefault "/home/${config.home.username}";
    # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
    stateVersion = lib.mkDefault "22.11";
  };
}
