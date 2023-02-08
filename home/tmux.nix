{ pkgs }:
{
  enable = true;

  clock24 = true;
  baseIndex = 1;
  escapeTime = 0;
  keyMode = "vi";
  newSession = false;
  shortcut = "a";

  plugins = with pkgs.tmuxPlugins; [
    extrakto
    nord
    sessionist
    vim-tmux-navigator
  ];

  extraConfig = ''
    # Move bar to top
    set -g status-position top

    # Fix System Clipboard
    set -g default-shell $SHELL
  '';
}
