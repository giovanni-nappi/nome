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

    # symlink neovim lua files in ~/.config/nvim/
    # file = (import ./neovim.nix { inherit pkgs; }).luaFiles;

  };

  # Configurations for programs directly supported by Home Manager
  programs = import ./programs.nix { inherit homeDirectory pkgs; };
}
