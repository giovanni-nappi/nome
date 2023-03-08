{ inputs, outputs, lib, config, pkgs, ... }:
{
  imports = [
    ./global
    ./features/desktop/i3

    ./features/multi-monitor/autorandr.nix
  ];

}
