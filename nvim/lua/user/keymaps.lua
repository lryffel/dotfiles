vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- Save / Quit
map("n", "<leader>w", ":write<CR>", { desc = "Save" })

-- File explorer
map("n", "<leader>op", ":Neotree toggle<CR>", { desc = "Toggle Neo-tree" })

-- Terminal
map("n", "<leader>ot", ":silent !alacritty &<CR>", { desc = "Open terminal" })

-- Window navigation
map("n", "<leader>ww", "<C-w><C-w>", { desc = "Window cycle" })
map("n", "<leader>wh", "<C-w>h", { desc = "Window left" })
map("n", "<leader>wl", "<C-w>l", { desc = "Window right" })
map("n", "<leader>wj", "<C-w>j", { desc = "Window down" })
map("n", "<leader>wk", "<C-w>k", { desc = "Window up" })

-- Search
map("n", "<leader>h", ":noh<CR>", { desc = "Clear search highlight" })

-- Indentation stays selected
map("x", "<", "<gv")
map("x", ">", ">gv")

-- LSP keymaps (set on attach so they only apply when LSP is active)
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local opts = function(desc)
      return { buffer = ev.buf, desc = desc }
    end

    map("n", "gd", vim.lsp.buf.definition, opts("Go to definition"))
    map("n", "gD", vim.lsp.buf.declaration, opts("Go to declaration"))
    map("n", "gr", vim.lsp.buf.references, opts("References"))
    map("n", "gi", vim.lsp.buf.implementation, opts("Go to implementation"))
    map("n", "K", vim.lsp.buf.hover, opts("Hover documentation"))
    map("n", "<leader>ca", vim.lsp.buf.code_action, opts("Code action"))
    map("n", "<leader>rn", vim.lsp.buf.rename, opts("Rename symbol"))
    map("n", "<leader>d", vim.diagnostic.open_float, opts("Line diagnostics"))
    map("n", "[d", vim.diagnostic.goto_prev, opts("Previous diagnostic"))
    map("n", "]d", vim.diagnostic.goto_next, opts("Next diagnostic"))
    map("n", "<leader>dl", vim.diagnostic.setloclist, opts("Diagnostics to loclist"))
  end,
})
