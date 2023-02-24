{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "oil-nvim";
  version = "2023-02-23";
  dontBuild = true;
  src = fetchFromGitHub {
    owner = "stevearc";
    repo = "oil.nvim";
    rev = "647c2d316c0c22dcd3908be21de1c298e8133b8f";
    sha256 = "0yl1jlbmdlw99b0nq98l5hyra13ifqhw57l0xn87g2myflxcpybv";
  };
  meta.homepage = "https://github.com/stevearc/oil.nvim";
}
