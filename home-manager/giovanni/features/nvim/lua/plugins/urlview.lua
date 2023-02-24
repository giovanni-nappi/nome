local ok, _ = pcall(require, "urlview")
if not ok then
  return
end

require("which-key").register({
  m = {
    u = { "<cmd>UrlView buffer action=clipboard<cr>", "Copy URL" },
  },
}, { prefix = "<leader>", mode = "n", { silent = true } })

