return {
  "eero-lehtinen/oklch-color-picker.nvim",
  event = "VeryLazy",
  version = "*",
  keys = {
    -- One handed keymap recommended, you will be using the mouse
    {
      "<leader>v",
      function() require("oklch-color-picker").pick_under_cursor() end,
      desc = "Color pick under cursor",
    },
  },
  ---@type oklch.Opts
  opts = {
    highlight = {
      enabled = true,

      -- Async delay in ms.
      edit_delay = 60,
      -- Async delay in ms.
      scroll_delay = 0,

      -- Options: 'background'|'foreground'|'virtual_left'|'virtual_eol'|'foreground+virtual_left'|'foreground+virtual_eol'
      style = "virtual_left",
      bold = false,
      italic = false,
      -- `● ` also looks nice, nerd fonts also have bigger shapes ` `, `󰝤 `, and ` `.
      virtual_text = " ",
      -- Less than user hl by default (:help vim.highlight.priorities)
      priority = 175,

      -- Prevent attaching to buffers with these filetypes.
      ignore_ft = { "blink-cmp-menu", "typescriptreact" },

      -- Tint the highlight background for 'foreground' and 'virtual' styles when the
      -- found color is too close to the editor background.
      -- Set `emphasis = false` to disable.
      emphasis = {
        -- Distance (0..1) to the editor background where emphasis activates
        -- (first item for dark themes, second for light ones).
        threshold = { 0.1, 0.17 },
        -- How much (0..255) to offset the color (first item for dark colors, second for light ones).
        amount = { 45, -80 },
      },

      -- List of LSP clients that are allowed to highlight colors:
      -- By default, only fairly performant and useful LSPs are enabled.
      -- Set `enabled_lsps = true` to enable all LSPs anyways.
      enabled_lsps = { "tailwindcss", "cssls", "css_variables" },
      -- Async delay in ms, LSPs also have their own latency.
      lsp_delay = 120,

      -- Disable builtin LSP colors introduced in Nvim 0.12 to avoid conflicts.
      disable_builtin_lsp_colors = true,
    },
  },
}
