{ homeDirectory
, pkgs
}:

{
  enable = true;
  userName = "Giovanni Nappi";
  userEmail = "giovanni.nappi@gmail.com";
  package = pkgs.gitAndTools.gitFull;

  delta = { enable = true; };

  lfs = { enable = true; };

  ignores = [
    ".cache/"
    ".DS_Store"
    ".direnv/"
    ".idea/"
    "*.swp"
    "built-in-stubs.jar"
    "dumb.rdb"
    ".elixir_ls/"
    ".vscode/"
    "npm-debug.log"
  ];

  aliases = (import ./aliases.nix { inherit homeDirectory; }).git;

  extraConfig = {
    core = {
      editor = "nvim";
      whitespace = "trailing-space,space-before-tab";
    };
  };
}
