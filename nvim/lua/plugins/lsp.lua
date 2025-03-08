local lua_ls_setup = {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}

return {
  -- installer for various LSPs, linters, and formatters
  {
    "Williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- ensures that LSPs are installed
  {
    "Williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "texlab",
          "ltex",
        },
      })
    end,
  },

  -- ensures that other tools from Mason are installed
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          "stylua",
        },
      })
    end,
  },

  -- configures LSPs
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup(lua_ls_setup)
      lspconfig.texlab.setup({})
      lspconfig.ltex.setup({})

      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },

  -- downloads formatters and linters as if they were LSPs
  {
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
}
