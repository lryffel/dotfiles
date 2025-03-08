return {
  "nvimtools/none-ls.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
      },
    })

    -- Optional: Map a key for manual formatting
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { buffer = 0 })
  end,
}
