{ homeDirectory
, pkgs
, stateVersion
, system
, username }:

let
  packages = import ./packages.nix { inherit homeDirectory pkgs; };
in {
  home = {
    inherit homeDirectory packages stateVersion username;

    shellAliases = {
      reload-home-manager-config = "home-manager switch --flake ${builtins.toString ./.}";
    };
  };

  # Configurations for programs directly supported by Home Manager
  programs = import ./programs.nix { inherit homeDirectory pkgs; };
}
