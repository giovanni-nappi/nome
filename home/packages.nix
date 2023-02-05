{ homeDirectory, pkgs }:

let
  bin = import ./bin.nix { inherit homeDirectory pkgs; };

  misc = with pkgs; [
    zk
  ];

  nixTools = with pkgs; [
    cachix
    lorri
  ];
in bin
++ misc
++ nixTools
