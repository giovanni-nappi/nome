{pkgs, ...}: {

    home = {
      username = "giovanni";
      homeDirectory = "/home/giovanni";
      stateVersion = "22.11";
    };

    programs = {
      home-manager.enable = true;
      bat.enable = true;
      btop.enable = true;
      exa = {
        enable = true;
        enableAliases = true;
      };
      jq.enable = true;
      k9s.enable = true;
      #kitty.enable = true;
    };

}
