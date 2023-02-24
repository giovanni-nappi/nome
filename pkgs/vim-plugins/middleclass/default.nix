{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "middleclass";
  version = "2022-09-20";
  dontBuild = true;
  src = fetchFromGitHub {
    owner = "anuvyklack";
    repo = "middleclass";
    rev = "9fab4d5bca67262614960960ca35c4740eb2be2c";
    sha256 = "1r68dh0vz08i37g9jmdgr799j35kr7z4r9cx8q0scrymigp5ghmi";
  };
  meta.homepage = "https://github.com/anuvyklack/middleclass";
}
