{ homeDirectory
, pkgs
}:

{
  # Fancy replacement for cat
  bat.enable = true;

  # Resource monitor
  btop.enable = true;

  # Replacement for ls
  exa = {
    enable = true;
    enableAliases = true;
  };

  # Fuzzy finder
  fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # Distributed version control
  git = (import ./git.nix { inherit homeDirectory pkgs; });

  # GPG config
  gpg.enable = true;

  # Configure HM itself
  home-manager.enable = true;

  # JSON parsing on the CLI
  jq.enable = true;

  # Kitty terminal emulator
  kitty = {
    enable = true;
  };

  # Kubernetes CLI
  k9s.enable = true;

  # Neovim
  neovim = (import ./nvim { inherit homeDirectory pkgs; });

  # TODO: tmux

}
