{ pkgs }:
{
  program = {
    enable = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    #plugins = with pkgs.vimPlugins; [
      #{
      #  plugins = alpha-nvim;
      #  type = "lua";
      #  config = ''
      #    require("plugins.alpha")
      #  '';
      #}
    #];

    extraLuaConfig = ''
      -- References to ./lua/

      -- Remap space as leader key
      vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
      vim.g.mapleader = " "

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

    '';
  };

  luaFiles = {
    ".config/nvim" = {
      recursive = true;
      source = ../config/nvim;
    };
  };

}
