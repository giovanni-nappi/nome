{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "nvim-window-picker";
  version = "2022-12-11";
  dontBuild = true;
  src = fetchFromGitHub {
    owner = "s1n7ax";
    repo = "nvim-window-picker";
    rev = "5902827d0e338890a22849e2f18dc80d1cc1a8db";
    sha256 = "1hky1v2y99gk17iz5axjfnawwm7ijm6kmnjdbzqkk037dpyx6inm";
  };
  meta.homepage = "https://github.com/s1n7ax/nvim-window-picker";
}
