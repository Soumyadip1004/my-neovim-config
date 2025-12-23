return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    -- dependencies = {
    -- "nvim-tree/nvim-web-devicons", -- optional, but recommended
    -- },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
      filesystem = {
        filtered_items = {
          visible = true, -- 🔥 THIS is the important one
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        background = "NONE",
      },
    },
  },
}
