local ok, oil = pcall(require, "oil")
if not ok then
  return
end

oil.setup({
  columns = {
    "icon",
    "permissions",
    "size",
    "mtime",
  },
  keymaps = {
    ["g?"] = "actions.show_help",
    ["<CR>"] = "actions.select",
    ["<C-v>"] = "actions.select_vsplit",
    ["<C-h>"] = "actions.select_split",
    ["<C-p>"] = "actions.preview",
    ["<C-l>"] = "actions.refresh",
    ["q"] = "actions.close",
    ["-"] = "actions.parent",
    ["_"] = "actions.open_cwd",
    ["<C-c>"] = "actions.cd",
    ["~"] = "actions.open_terminal",
    ["."] = "actions.toggle_hidden",
  },
})

vim.keymap.set("n", "-", oil.open, { desc = "Open parent directory" })
