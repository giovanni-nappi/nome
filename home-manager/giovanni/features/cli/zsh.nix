# Zsh
{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    enableSyntaxHighlighting = true;
    autocd = true;
    shellAliases = (import ./aliases.nix).shell;

    oh-my-zsh = {
      enable = true;
      theme = "bira";

      extraConfig = ''
        setxkbmap -option ctrl:nocaps
        xcape -e 'Control_L=Escape' -t 175
        if [ -e /home/giovanni/.nix-profile/etc/profile.d/nix.sh ]; then . /home/giovanni/.nix-profile/etc/profile.d/nix.sh; fi
      '';

      plugins = [
        "git"
        "history"
        "kubectl"
        "pass"
      ];
    };
  };
}
