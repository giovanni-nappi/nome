{ config, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      zk
    ];
    sessionVariables = {
      ZK_NOTEBOOK_DIR = "/home/${config.home.username}/cabinet/notes";
    };
  };
}
