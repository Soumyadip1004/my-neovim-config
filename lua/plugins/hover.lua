return {
  "lewis6991/hover.nvim",
  event = "LspAttach",
  config = function()
    require("hover").setup {
      border = "rounded",

      init = function()
        -- ✅ Main and only provider you actually want
        require "hover.providers.lsp"

        -- ❌ Intentionally NOT loading dictionary
        -- require("hover.providers.dictionary")
      end,

      preview_opts = {
        border = "rounded",
      },

      title = true,
    }

    -- Setup keymaps
    vim.keymap.set("n", "K", function() require("hover").open() end, { desc = "hover.nvim (open)" })

    vim.keymap.set("n", "gK", function() require("hover").enter() end, { desc = "hover.nvim (enter)" })

    vim.keymap.set(
      "n",
      "<C-p>",
      function() require("hover").switch "previous" end,
      { desc = "hover.nvim (previous source)" }
    )

    vim.keymap.set("n", "<C-n>", function() require("hover").switch "next" end, { desc = "hover.nvim (next source)" })

    -- Mouse support
    vim.keymap.set("n", "<MouseMove>", function() require("hover").mouse() end, { desc = "hover.nvim (mouse)" })

    vim.o.mousemoveevent = true
  end,
}
