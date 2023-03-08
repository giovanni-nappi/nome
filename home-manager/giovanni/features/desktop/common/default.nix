{ pkgs, lib, outputs, ... }:
{
  imports = [

  ];

  xdg.mimeApps.enable = true;

  home.packages = with pkgs; [
    google-chrome-dev
    #xdg-utils-spawn-terminal
  ];
}
