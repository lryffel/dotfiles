local lua_ls_setup = {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }
}

return {
  {
    "Williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "Williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "texlab",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup(lua_ls_setup)
      lspconfig.texlab.setup({})

      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}

