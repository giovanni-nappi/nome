{ homeDirectory }:

{
  enable = true;
  enableAutosuggestions = true;
  enableCompletion = true;
  autocd = true;
  shellAliases = (import ./aliases.nix { inherit homeDirectory; }).shell;

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

}
