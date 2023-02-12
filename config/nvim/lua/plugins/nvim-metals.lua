local ok, metals = pcall(require, "metals")
local utils = require("core.utils.functions")
if not ok then
  utils.notify("Problems with the plugin", 1, "metals")
  return
end

local metals_config = metals.bare_config()
local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
vim.opt_global.shortmess:remove("F")
metals_config.settings = {
  showImplicitArguments = true,
  excludedPackages = { "akka.actor.typed.javadsl", "com.github.swagger.akka.javadsl" },
}
--metals_config.init_options.statusBarProvider = "on"
metals_config.on_attach = function(client, bufnr)
  require("metals").setup_dap()
  require("plugins.lsp.utils").custom_lsp_attach(client, bufnr)
    local wk = require("which-key")
    local default_options = { silent = true }
    wk.register({
      c = {
        name = "Coding",
        a = { "<cmd>MetalsAnalyzeStacktrace<cr>", "Analyze Stacktrace" },
        b = {
          name = "Build",
          c = { "<cmd>MetalsConnectBuild<cr>", "Connect" },
          d = { "<cmd>MetalsDisconnectBuild<cr>", "Disconnect" },
          i = { "<cmd>MetalsImportBuild<cr>", "Import" },
          r = { "<cmd>MetalsRestartBuild<cr>", "Restart" },
          t = { "<cmd>MetalsShowBuildTargetInfo<cr>", "Show Target Info" },
        },
        c = {
          name = "Compile",
          s = { "<cmd>MetalsCompileCascade<cr>", "Cascade" },
          n = { "<cmd>MetalsCompileCancel<cr>", "Cancel" },
          l = { "<cmd>MetalsCompileClean<cr>", "Clean" }
        },
        h = {
          name = "Helper",
          c = { "<cmd>lua require('telescope').extensions.metals.commands()<cr>", "Metals commands" },
          d = { "<cmd>MetalsRunDoctor<cr>", "Run Doctor" },
          i = { "<cmd>MetalsInstall<cr>", "Install" },
        },
        s = {
          name = "Server",
          r = { "<cmd>MetalsRestartServer<cr>", "Restart" },

        },
        t = {
          name = "Tests",
        },
      },
    }, { prefix = "<leader>", mode = "n", default_options })
    wk.register({
      c = {
        -- name = "Coding",
        j = { "<cmd>'<,'>GoJson2Struct<cr>", "Json to struct" },
      },
    }, { prefix = "<leader>", mode = "v", default_options })
  -- MetalsCopyWorksheetOutput
  -- MetalsFindInDependencyJars
  -- MetalsGenerateBspConfig
  -- MetalsGotoSuperMethod
  -- MetalsInfo
  -- MetalsNewScalaFile
  -- MetalsNewScalaProject
  -- MetalsOrganizeImports
  -- MetalsQuickWorksheet
  -- MetalsResetChoice
  -- MetalsRunScalafix
  -- MetalsScanSources
  -- MetalsSelectTestCase
  -- MetalsSelectTestSuite
  -- MetalsShowCfr
  -- MetalsShowJavap
  -- MetalsShowJavapVerbose
  -- MetalsShowSemanticdbCompact
  -- MetalsShowSemanticdbDetailed
  -- MetalsShowSemanticdbProto
  -- MetalsShowTasty
  -- MetalsStartAmmonite
  -- MetalsStartScalaCli
  -- MetalsStartServer
  -- MetalsStopAmmonite
  -- MetalsStopScalaCli
  -- MetalsSuperMethodHierarchy
  -- MetalsSwitchBsp
  -- MetalsToggleLogs
  -- MetalsUpdate
end
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "scala", "sbt", "java" },
  callback = function()
    require("metals").initialize_or_attach(metals_config)
  end,
  group = nvim_metals_group,
})

