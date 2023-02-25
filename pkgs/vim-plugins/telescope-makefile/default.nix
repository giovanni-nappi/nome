{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "telescope-makefile";
  version = "2023-02-10";
  dontBuild = true;
  src = fetchFromGitHub {
    owner = "sopa0";
    repo = "telescope-makefile";
    rev = "6e5b5767751dbf73ad4f126840dcf1abfc38e891";
    sha256 = "1i0w7dar34dcmyrmspix6kdi14mic4a3g2al0rpyi26fkcvcwnj4";
  };
  meta.homepage = "https://github.com/sopa0/telescope-makefile";
}


