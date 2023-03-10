{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "telescope-heading-nvim";
  version = "2023-03-02";
  dontBuild = true;
  src = fetchFromGitHub {
    owner = "crispgm";
    repo = "telescope-heading.nvim";
    rev = "814faa3a4e35162cdcbfe8e7cd4f0b47015da089";
    sha256 = "1rrz4abmljk6c6mnzvmximqih68w2a7sd9w55d9kwgfb6nddnl4l";
  };
  meta.homepage = "https://github.com/crispgm/telescope-heading.nvim";
}

