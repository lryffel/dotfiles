-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.spelllang = { "en", "de_ch" }

-- these options are togglable with <leader><u>
vim.opt.wrap = false -- line wrap
vim.opt.conceallevel = 0 -- conceal
vim.lsp.handlers["$/progress"] = function() end
