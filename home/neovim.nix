{ pkgs }:
{
  enable = true;

  viAlias = true;
  vimAlias = true;
  vimdiffAlias = true;

  defaultEditor = true;

  plugins = with pkgs.vimPlugins; [
    { plugin = alpha-nvim;
      config = '' require("plugins.alpha.alpha") '';
      type = "lua";
    }
    bufdelete-nvim
    nvim-web-devicons # alpha-nvim dep
    { plugin = nvim-autopairs;
      config = '' require("plugins.autopairs") '';
      type = "lua";
    }
    nvim-navic # which-key dep
    plenary-nvim # alpha-nvim dep
    { plugin = which-key-nvim;
      config = '' require("plugins.which-key") '';
      type = "lua";
    }
  ];

  extraLuaConfig = ''
    -- References to ./lua/

    -- Remap space as leader key
    vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
    vim.g.mapleader = " "

    -- Load global functions
    require("core.globals")
    -- Plugin management via lazy
    -- require("core.lazy")
    -- "Global" Keymappings
    require("core.mappings")
    -- All non plugin related (vim) options
    require("core.options")
    -- Vim autocommands/autogroups
    require("core.autocmd")

  '';

}
