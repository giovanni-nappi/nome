{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "telescope-heading-nvim";
  version = "2022-12-04";
  dontBuild = true;
  src = fetchFromGitHub {
    owner = "crispgm";
    repo = "telescope-heading.nvim";
    rev = "b1969c1b1b3de52c45b4c440e0784c33b5814954";
    sha256 = "1ljvigvii74bvfx8952xar5qsb236krhxa7yhv1fll297mxcj9ca";
  };
  meta.homepage = "https://github.com/crispgm/telescope-heading.nvim";
}

