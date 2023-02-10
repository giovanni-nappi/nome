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
    { plugin = gitsigns-nvim;
      config = '' require("plugins.gitsigns") '';
      type = "lua";
    }
    { plugin = mini-nvim;
      config = '' require("plugins.mini") '';
      type = "lua";
    }
    { plugin = neo-tree-nvim;
      config = '' require("plugins.neo-tree") '';
      type = "lua";
    }
    { plugin = neogit;
      config = '' require("plugins.neogit") '';
      type = "lua";
    }
    { plugin = noice-nvim;
      config = '' require("plugins.noice") '';
      type = "lua";
    }
    { plugin = nvim-autopairs;
      config = '' require("plugins.autopairs") '';
      type = "lua";
    }
    nui-nvim # neo-tree, noice dep
    nvim-navic # which-key dep
    nvim-notify # noice dep
    nvim-web-devicons # alpha-nvim, neo-tree dep
    plenary-nvim # alpha-nvim, gitsigns, neogit, neo-tree dep
    { plugin = which-key-nvim;
      config = '' require("plugins.which-key") '';
      type = "lua";
    }
    {
      plugin = telescope-nvim;
      config = '' require("plugins.telescope") '';
      type = "lua";
    }
    telescope-nvim
    telescope-file-browser-nvim
    #telescope-heading-nvim
    #telescope-makefile
    telescope-symbols-nvim
    telescope-ui-select-nvim
    telescope-zoxide
    { plugin = tokyonight-nvim;
      config = '' require("plugins.tokyonight") '';
      type = "lua";
    }
    vim-fugitive
    vim-nix
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
