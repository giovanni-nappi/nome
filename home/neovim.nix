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
    { plugin = nvim-cmp;
      config = '' require("plugins.cmp") '';
      type = "lua";
    }
    cmp-nvim-lsp # nvim-cmp dep
    cmp-buffer # nvim-cmp dep
    cmp-path # nvim-cmp dep
    cmp-cmdline # nvim-cmp dep
    cmp-calc # nvim-cmp dep
    cmp-rg # nvim-cmp dep
    cmp-nvim-lsp-signature-help # nvim-cmp dep
    { plugin = diffview-nvim;
      config = '' require("plugins.diffview") '';
      type = "lua";
    }
    friendly-snippets
    { plugin = gitsigns-nvim;
      config = '' require("plugins.gitsigns") '';
      type = "lua";
    }
    { plugin = hydra-nvim;
      config = '' require("plugins.hydra.hydra") '';
      type = "lua";
    }
    { plugin = indent-blankline-nvim;
      config = '' require("plugins.indent-blankline") '';
      type = "lua";
    }
    keymap-layer-nvim # hydra dep
    lspkind-nvim # nvim-cmp dep
    { plugin = mini-nvim;
      config = '' require("plugins.mini") '';
      type = "lua";
    }
    { plugin = Navigator-nvim;
      config = '' require("plugins.navigator") '';
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
    { plugin = nvim-bqf;
      config = '' require("plugins.bqf") '';
      type = "lua";
    }
    nui-nvim # neo-tree, noice dep
    nvim-navic # which-key dep
    nvim-notify # noice dep
    nvim-web-devicons # alpha-nvim, diffview, neo-tree dep
    plenary-nvim # alpha-nvim, diffview, gitsigns, neogit, neo-tree, todo-commetns dep
    { plugin = project-nvim;
      config = '' require("plugins.project") '';
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
    { plugin = todo-comments-nvim;
      config = '' require("plugins.todo-comments") '';
      type = "lua";
    }
    { plugin = toggleterm-nvim;
      config = '' require("plugins.toggleterm") '';
      type = "lua";
    }
    { plugin = tokyonight-nvim;
      config = '' require("plugins.tokyonight") '';
      type = "lua";
    }
    { plugin = urlview-nvim;
      config = '' require("plugins.urlview") '';
      type = "lua";
    }
    vim-fugitive
    vim-nix
    { plugin = which-key-nvim;
      config = '' require("plugins.which-key") '';
      type = "lua";
    }
    { plugin = zk-nvim;
      config = '' require("plugins.zk-nvim") '';
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
