{ pkgs, vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "animation-nvim";
  version = "2022-09-18";
  dontBuild = true;
  src = fetchFromGitHub {
    owner = "anuvyklack";
    repo = "animation.nvim";
    rev = "fb77091ab72ec9971aee0562e7081182527aaa6a";
    #sha256 = "1n9a7l7g7yp3ak1g7yxb3afcx5qzzvl4scarqvhd0saz8ilhxhi8";
    sha256 = "0yaxp3l33af1k6na0jikwmr0nxk862ihpq8r0042mll1ily7689b";
  };
  meta.homepage = "https://github.com/anuvyklack/animation.nvim";
}
