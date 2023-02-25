{ pkgs }: {
  animation-nvim = pkgs.callPackage ./animation-nvim { };
  middleclass = pkgs.callPackage ./middleclass { };
  nvim-window-picker = pkgs.callPackage ./nvim-window-picker { };
  oil-nvim = pkgs.callPackage ./oil-nvim { };
  starlite-nvim = pkgs.callPackage ./starlite-nvim { };
  telescope-heading-nvim = pkgs.callPackage ./telescope-heading-nvim { };
  telescope-makefile = pkgs.callPackage ./telescope-makefile { };
}
