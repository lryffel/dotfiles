return {
  -- nvim-cmp: Completion engine
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- cmp-nvim-lsp: LSP source for nvim-cmp
      "hrsh7th/cmp-nvim-lsp",
      -- cmp-nvim-ultisnips: UltiSnips source for nvim-cmp
      "quangnguyen30192/cmp-nvim-ultisnips",
      -- UltiSnips: Snippet engine
      "SirVer/ultisnips",
    },
    config = function()
      local cmp = require("cmp")
      local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")

      cmp.setup({
        snippet = {
          expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              cmp_ultisnips_mappings.jump_backwards(fallback)
            end
          end, { 'i', 's' }),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "ultisnips" },
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },
}
