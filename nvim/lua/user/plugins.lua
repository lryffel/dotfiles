return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        integrations = { gitsigns = true },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  {
    "SirVer/ultisnips",
    init = function()
      vim.g.UltiSnipsExpandTrigger = "<tab>"
      vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
      vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"
      vim.g.UltiSnipsSnippetDirectories = { "~/.config/nvim/UltiSnips" }
    end,
  },

  { "tpope/vim-surround", keys = { "s", "S" } },

  {
    "lervag/vimtex",
    ft = { "tex", "bib" },
    init = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_compiler_progname = "nvr"
      vim.g.vimtex_compiler_latexmk = {
        options = {
          "-shell-escape",
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
        },
      }
    end,
  },

  {
    "dense-analysis/ale",
    event = "BufReadPost",
    init = function()
      vim.g.ale_linters = {
        tex = { "lacheck" },
        bib = { "bibclean" },
        rust = { "analyzer", "cargo" },
        svelte = { "svelte-language-server", "eslint" },
        typescript = { "typescript-language-server", "eslint" },
        typescriptreact = { "typescript-language-server", "eslint" },
        javascript = { "typescript-language-server", "eslint" },
        cpp = {
          "clangcheck",
          "clangd",
          "clangtidy",
          "clazy",
          "cppcheck",
          "cpplint",
          "cquery",
          "cspell",
          "flawfinder",
        },
      }
      vim.g.ale_fix_on_save = 1
      vim.g.ale_rust_cargo_use_clippy = 1
      vim.g.ale_fixers = {
        ["*"] = { "remove_trailing_lines", "trim_whitespace" },
        rust = { "rustfmt" },
        svelte = { "prettier", "eslint" },
        typescript = { "prettier", "eslint" },
        javascript = { "prettier", "eslint" },
      }
      vim.g.ale_echo_msg_format = "%s (%linter%)"
      vim.g.ale_completion_enabled = 1
      vim.g.ale_completion_autoimport = 1
      vim.opt.omnifunc = "ale#completion#OmniFunc"
    end,
  },

  {
    "itchyny/lightline.vim",
    init = function()
      vim.cmd([[
        function! GitBranch()
          if exists("*FugitiveHead")
            return FugitiveHead()
          endif
          return ""
        endfunction
      ]])

      vim.g.lightline = {
        active = {
          left = {
            { "mode", "paste" },
            { "gitbranch", "readonly", "filename", "modified" },
          },
        },
        component_function = {
          gitbranch = "GitBranch",
        },
      }
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPost",
    config = function()
      require("gitsigns").setup()
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        filesystem = {
          follow_current_file = { enabled = true },
          hijack_netrw_behavior = "open_default",
        },
      })
    end,
  },

  {
    "ahmedkhalf/project.nvim",
    event = "BufReadPost",
    config = function()
      require("project_nvim").setup({
        detection_methods = { "pattern" },
        patterns = { ".git", "package.json", "pyproject.toml", "Makefile" },
        manual_mode = false,
        silent_chdir = true,
      })
    end,
  },

  { "tpope/vim-repeat", event = "VeryLazy" },

  { "evanleck/vim-svelte", ft = "svelte" },

  { "nvim-lua/plenary.nvim", lazy = true },
  { "nvim-tree/nvim-web-devicons", lazy = true },
  { "MunifTanjim/nui.nvim", lazy = true },
}
