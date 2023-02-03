{ homeDirectory, pkgs }:

let
  bin = import ./bin.nix { inherit homeDirectory pkgs; };

  nixTools = with pkgs; [
    cachix
    lorri
  ];
in bin
++ nixTools
