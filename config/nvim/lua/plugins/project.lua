local ok, project = pcall(require, "project")
if not ok then
  return
end

project.setup({
  patterns = {
    ".git",
    "package.json",
    ".terraform",
    "go.mod",
    "requirements.yml",
    "pyrightconfig.json",
    "pyproject.toml",
  },
  -- detection_methods = { "lsp", "pattern" },
  detection_methods = { "pattern" },
})
