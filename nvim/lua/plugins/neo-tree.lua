return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      enable_normal_mode_for_input = true,
      filtered_items = {
        hide_by_pattern = { "*.pdf" }, -- Hide all PDF files
        -- Other filtering options can be added here
      },
    },
  },
}
