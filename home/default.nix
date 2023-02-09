{ homeDirectory
, pkgs
, stateVersion
, system
, username }:

{
  home = {
    inherit homeDirectory stateVersion username;

    packages = import ./packages.nix { inherit homeDirectory pkgs; };

    sessionVariables = {
      EDITOR = "nvim";
      ZK_NOTEBOOK_DIR = "${homeDirectory}/cabinet/notes";
    };

    file = (import ./neovim.nix).luaFiles;

    shellAliases = {
      reload-home-manager-config = "home-manager switch --flake ${builtins.toString ./.}";
    };
  };

  # Configurations for programs directly supported by Home Manager
  programs = import ./programs.nix { inherit homeDirectory pkgs; };
}
