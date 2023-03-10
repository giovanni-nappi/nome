{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "oil-nvim";
  version = "2023-03-07";
  dontBuild = true;
  src = fetchFromGitHub {
    owner = "stevearc";
    repo = "oil.nvim";
    rev = "33d5701a8de02bdba171d0795e4422e002f61742";
    sha256 = "1abxbg5r82cn2alm8iq4n8hil41913f9wawm7sswsyv3nxl55a63";
  };
  meta.homepage = "https://github.com/stevearc/oil.nvim";
}
