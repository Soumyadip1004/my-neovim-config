return {
  {
    "scottmckendry/cyberdream.nvim",
    opts = {
      transparent = true,
      terminal_colors = true,
      overrides = function(colors)
        return {

          ["@property"] = { fg = colors.magenta, bold = true },

          -- 🔥 CURRENT LINE SETUP 🔥
          CursorLine = {
            bg = "NONE", -- keep transparency
          },

          CursorLineNr = {
            fg = "#2FD57E",
            bold = true,
          },

          IncSearch = { bg = "#3C4048" },
        }
      end,
    },
  },
  {
    "oxidescheme/oxide.nvim",
    config = function()
      require("oxide").setup {
        transparent = true, -- Enable transparent background
        terminal_colors = true, -- Configure terminal colors
      }
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
      float = {
        transparent = true, -- enable transparent floating windows
        -- solid = false, -- use solid styling for floating windows, see |winborder|
      },
    },
  },
}
