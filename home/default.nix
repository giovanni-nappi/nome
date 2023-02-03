{ homeDirectory
, pkgs
, stateVersion
, system
, username }:

let
  packages = import ./packages.nix { inherit pkgs; };
in {
  home = {
    inherit homeDirectory packages stateVersion username;

    shellAliases = {
      reload-home-manager-config = "home-manager switch --flake ${builtins.toString ./.}";
    };
  };

  programs = import ./programs.nix;
}
