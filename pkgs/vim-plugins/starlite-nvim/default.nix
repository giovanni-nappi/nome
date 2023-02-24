{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "starlite-nvim";
  version = "2021-08-20";
  dontBuild = true;
  src = fetchFromGitHub {
    owner = "ironhouzi";
    repo = "starlite-nvim";
    rev = "bc204069859e4e85a057b92ac61700f3f46c3e41";
    sha256 = "1vngxfyd5dpch0b0aas7cb3k80235kg9d427fygmbhx4wp6qaw2s";
  };
  meta.homepage = "https://github.com/ironhouzi/starlite-nvim";
}

