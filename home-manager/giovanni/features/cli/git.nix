# Distributed version control
{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "Giovanni Nappi";
    userEmail = "giovanni.nappi@gmail.com";
    package = pkgs.gitAndTools.gitFull;

    delta = { enable = true; };

    lfs = { enable = true; };

    ignores = [
      ".DS_Store"
      ".bloop"
      ".bsp"
      ".cache/"
      ".classpath"
      ".direnv/"
      ".elixir_ls/"
      ".ensime"
      ".ensime_cache/"
      ".idea/"
      ".metals"
      ".project"
      ".settings/"
      ".vim-bookmarks"
      ".vscode/"
      "**.metals.sbt"
      "*.class"
      "*.iml"
      "*.swp"
      "TAGS"
      "bin/"
      "built-in-stubs.jar"
      "dumb.rdb"
      "logs"
      "npm-debug.log"
      "result"
      "target/"
    ];

    aliases = (import ./aliases.nix).git;

    extraConfig = {
      core = {
        editor = "nvim";
        whitespace = "trailing-space,space-before-tab";
      };
      init.defaultBranch = "main";
    };
  };
}
