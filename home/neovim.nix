{
  program = {
    enable = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraConfig = ''
      lua <<EOF
        -- References to ./lua/

        -- Load global functions
        require("core.globals")
        -- Plugin management via lazy
        require("core.lazy")
        -- "Global" Keymappings
        require("core.mappings")
        -- All non plugin related (vim) options
        require("core.options")
        -- Vim autocommands/autogroups
        require("core.autocmd")
      EOF
    '';
  };

  luaFiles = {
    ".config/nvim" = {
      recursive = true;
      source = ../config/nvim;
    };
  };

}
