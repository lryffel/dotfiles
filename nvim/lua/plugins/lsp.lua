local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Define LSP servers and their settings
local servers = {
  lua_ls = {
    settings = {
      Lua = { diagnostics = { globals = { "vim" } } },
    },
  },
  texlab = {},
  ltex = {},
  tinymist = {
    settings = {
      exportPdf = "onType",
      formatterMode = "typstyle",
    },
  },
}

return {
  -- Mason installer
  {
    "williamboman/mason.nvim",
    config = true,
  },

  -- Ensure LSPs are installed
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = vim.tbl_keys(servers),
      })

      -- Use the new native LSP config API
      local configs = vim.lsp.configs

      for name, opts in pairs(servers) do
        opts.capabilities = capabilities
        configs[name] = vim.tbl_deep_extend("force", {}, vim.lsp.config[name] or {}, opts)
      end

      -- Start all installed LSPs automatically
      require("mason-lspconfig").setup_handlers({
        function(server)
          vim.lsp.start(servers[server])
        end,
      })
    end,
  },

  -- Optional tools like stylua, null-ls, etc.
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
        },
      })
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
  },
}
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Define server configurations
local servers = {
  lua_ls = {
    settings = { Lua = { diagnostics = { globals = { "vim" } } } },
  },
  texlab = {},
  ltex = {},
  tinymist = {
    settings = {
      exportPdf = "onType",
      formatterMode = "typstyle",
    },
  },
}

return {
  {
    "williamboman/mason.nvim",
    config = true,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = vim.tbl_keys(servers),
      })

      -- Support both new and old APIs
      local lspconfig = vim.lsp.configs or require("lspconfig")

      require("mason-lspconfig").setup_handlers({
        function(server)
          local opts = servers[server] or {}
          opts.capabilities = capabilities

          if vim.lsp.configs then
            -- New API (Neovim 0.11+)
            vim.lsp.start(opts)
          else
            -- Old API (Neovim <= 0.10)
            require("lspconfig")[server].setup(opts)
          end
        end,
      })
    end,
  },

  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
        },
      })
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
  },
}
