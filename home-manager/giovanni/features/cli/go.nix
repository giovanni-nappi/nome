{ pkgs, ... }:
{

  home.packages = with pkgs; [
    gotools
    gopls
    go-outline
    gocode
    gopkgs
    gocode-gomod
    godef
    golint
  ];

  programs.go = {
    enable = true;

    goPath = "go";
    extraGoPaths = [];

    #goBin = null;
    goPrivate = [
      "bitbucket.truecaller.net"
      "gerrit.truecaller.net"
    ];
  };
}
