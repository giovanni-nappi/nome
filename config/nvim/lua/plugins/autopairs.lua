local status_ok, autopairs = pcall(require, "nvim-autopairs")
if not status_ok then
  return
end

local opts = {
  enable_check_bracket_line = false, -- Don't add pairs if it already has a close pair in the same line
  ignored_next_char = "[%w%.]", -- will ignore alphanumeric and `.` symbol
  check_ts = true, -- use treesitter to check for a pair.
  ts_config = {
    lua = { "string" }, -- it will not add pair on that treesitter node
    javascript = { "template_string" },
    java = false, -- don't check treesitter on java
  },
}

autopairs.setup(opts)
