return {
  "Sirver/ultisnips",
  event = { "InsertEnter" },
  config = function()
    vim.g.UltiSnipsExpandTrigger = "<Tab>"
    vim.g.UltiSnipsJumpForwardTrigger = "<Tab>"
    vim.g.UltiSnipsJumpBackwardTrigger = "<S-Tab>"
    vim.g.UltiSnipsSnippetDirectories = { "~/.config/nvim/UltiSnips" }
  end,
}
