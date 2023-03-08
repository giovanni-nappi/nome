{ config, pkgs, lib, ... }:
{
  imports = [
  ];

  home.file = {
    ".config/nvim/lua" = {
      recursive = true;
      source = ../nvim/lua;
    };
  };

  home.sessionVariables.EDITOR = "nvim";

  programs.neovim = {
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
      animation-nvim # windows dep
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
      # go-nvim
      # guihua-lua # go-nvim dep
      { plugin = hydra-nvim;
        config = '' require("plugins.hydra.hydra") '';
        type = "lua";
      }
      { plugin = indent-blankline-nvim;
        config = '' require("plugins.indent-blankline") '';
        type = "lua";
      }
      keymap-layer-nvim # hydra dep
      lspkind-nvim # nvim-cmp, nvim-lspconfig dep
      luasnip # nvim-cmp dep
      middleclass # windows dep
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
      neodev-nvim # nvim-lspconfig dep
      { plugin = neogit;
        config = '' require("plugins.neogit") '';
        type = "lua";
      }
      { plugin = noice-nvim;
        config = '' require("plugins.noice") '';
        type = "lua";
      }
      { plugin = null-ls-nvim;
        config = '' require("plugins.lsp.null-ls") '';
        type = "lua";
      }
      nui-nvim # neo-tree, noice dep
      { plugin = nvim-autopairs;
        config = '' require("plugins.autopairs") '';
        type = "lua";
      }
      { plugin = nvim-bqf;
        config = '' require("plugins.bqf") '';
        type = "lua";
      }
      { plugin = nvim-dap; # nvim-metals dep
        config = '' require("plugins.dap.dap") '';
        type = "lua";
      }
      nvim-dap-python # nvim-dap dep
      nvim-dap-go # nvim-dap dep
      nvim-dap-ui # nvim-dap dep
      nvim-dap-virtual-text # nvim-dap dep
      { plugin = nvim-lspconfig; # go-nvim dep
        config = '' require("plugins.lsp.lsp") '';
        type = "lua";
      }
      { plugin = nvim-metals;
        config = '' require("plugins.nvim-metals") '';
        type = "lua";
      }
      nvim-navic # which-key dep
      nvim-notify # noice dep
      { plugin = nvim-treesitter; # go-nvim, treesj dep
        config = '' require("plugins.treesitter") '';
        type = "lua";
      }
      nvim-treesitter.withAllGrammars
      nvim-treesitter-textobjects # nvim-treesitter dep
      nvim-ts-autotag # nvim-treesitter dep
      { plugin = nvim-ufo;
        config = '' require("plugins.ufo") '';
        type = "lua";
      }
      nvim-web-devicons # alpha-nvim, diffview, neo-tree dep
      nvim-window-picker
      { plugin = oil-nvim;
        config = '' require("plugins.oil") '';
        type = "lua";
      }
      playground # nvim-treesitter dep
      plenary-nvim # alpha-nvim, diffview, gitsigns, neogit, neo-tree, null-ls, nvim-metals, todo-commetns dep
      { plugin = project-nvim;
        config = '' require("plugins.project") '';
        type = "lua";
      }
      { plugin = symbols-outline-nvim;
        config = '' require("plugins.symbols-outline") '';
        type = "lua";
      }
      {
        plugin = telescope-nvim;
        config = '' require("plugins.telescope") '';
        type = "lua";
      }
      telescope-nvim
      telescope-file-browser-nvim
      telescope-heading-nvim
      telescope-makefile
      telescope-symbols-nvim
      telescope-ui-select-nvim
      telescope-zoxide
      { plugin = treesj;
        config = '' require("plugins.treesj") '';
        type = "lua";
      }
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
      { plugin = windows-nvim;
        config = '' require("plugins.windows") '';
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
      -- "Global" Keymappings
      require("core.mappings")
      -- All non plugin related (vim) options
      require("core.options")
      -- Vim autocommands/autogroups
      require("core.autocmd")
    '';


  };
}
