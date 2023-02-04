{ pkgs }:
{
  enable = true;
  clock24 = true;
  escapeTime = 10;
  baseIndex = 1;
  keyMode = "vi";
  shortcut = "a";

  plugins = with pkgs.tmuxPlugins; [
    cpu
    # tmux-sensible
    vim-tmux-navigator
  ];

  extraConfig = ''
    # Move bar to top
    set -g status-position top

    # Fix System Clipboard
    set -g default-shell $SHELL

    # Theme
    set -g @themepack 'block/yellow'
  '';
}
