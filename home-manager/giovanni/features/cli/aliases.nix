{
  git = {
    ba = "branch --all";
    bd = "branch --delete --force";
    br = "branch";
    cam = "commit --all --message";
    co = "checkout";
    cob = "checkout -b";
    ci = "commit";
    cm = "commit --message";
    cp = "commit --patch";
    crp = "cherry-pick";
    d = "diff";
    dco = "commit --amend --no-edit --signoff";
    s = "status";
    pr = "pull --rebase";
    st = "status";
    l = "log --graph --pretty='%Cred%h%Creset - %C(bold blue)<%an>%Creset %s%C(yellow)%d%Creset %Cgreen(%cr)' --abbrev-commit --date=relative";
    whoops = "reset --hard";
    wipe = "commit -s";
    fix = "rebase --exec 'git commit --amend --no-edit -S' -i origin/develop";
  };

  shell = {
    # General
    cat = "bat";
    cfg = "nvim ~/nome/flake.nix";
    dc = "docker compose";
    diff = "diff --color=auto";
    grep = "grep --color=auto";
    szsh = "source ~/.zshrc";

    # kubectl
    k = "kubectl";
    kx = "kubectx";

    ## Nix stuff. Inspired by: https://alexfedoseev.com/blog/post/nix-time.

    # Run Nix garbage collection
    xgc = "nix-env --delete-generations old && nix-store --gc";
    xhm = "home-manager expire-generations '-7 days'";

    # Nix flake helpers
    nfs = "nix flake show";
    nfu = "nix flake update";
  };
}

