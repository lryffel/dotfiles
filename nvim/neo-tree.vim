lua << EOF
-- Dependencies: plenary.nvim, nvim-web-devicons, neo-tree.nvim, project.nvim

-- project.nvim handles root detection
require("project_nvim").setup({
  detection_methods = { "pattern" },
  patterns = { ".git", "package.json", "pyproject.toml", "Makefile" },
  manual_mode = false,        -- auto-detect project root
  silent_chdir = true,        -- don't echo when changing dirs
})

-- Neo-tree uses whatever Neovim's current working directory is
require("neo-tree").setup({
  close_if_last_window = true,
  filesystem = {
    follow_current_file = { enabled = true },
    hijack_netrw_behavior = "open_default",
  },
})
EOF
