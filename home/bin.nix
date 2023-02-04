{ homeDirectory
, pkgs
}:

let
  inherit (pkgs) writeScriptBin;
  inherit (pkgs.lib) fakeHash;

  checkForArg = pos: msg: ''
    if [ -z "$''${pos}" ]; then
      echo "${msg}"
      exit 1
    fi
  '';

  checkForArg1 = msg: checkForArg 1 msg;
  checkForArg2 = msg: checkForArg 2 msg;
  checkForArg3 = msg: checkForArg 3 msg;

  prefix = ''
    set -o errexit
    set -o nounset
    set -o pipefail
    if [[ "''${TRACE-0}" == "1" ]]; then
      set -o xtrace
    fi
  '';

  script = name: content: writeScriptBin name ''
    ${prefix}
    ${content}
  '';
in
[
  (script "docker-clean" ''
    docker system prune -af
    docker volume prune -f
    docker image prune -af
    docker system prune -a --volumes
  '')

  (script "vagrant-clean" ''
    vagrant box list | cut -f 1 -d ' ' | xargs -L 1 vagrant box remove -f
  '')

  (script "nix-clean" ''
    home-manager expire-generations "-7 days" && \
    nix-env --delete-generations old && \
    nix-store --gc
  '')

  (script "wo" ''
    ${checkForArg1 "no executable specified"}

    readlink $(which $1)
  '')

  (script "cfg" ''
    nvim ${homeDirectory}/nome/flake.nix
  '')

  # TODO vagrant / virtualbox clean
]
