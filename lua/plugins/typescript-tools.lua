return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {},

  config = function(_, opts)
    require("typescript-tools").setup(opts)

    -- buffer-local keymaps when LSP attaches
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client.name ~= "typescript-tools" then return end

        local map = vim.keymap.set
        local buf = ev.buf

        -- Group: <leader> l t (Language Tools → TypeScript)
        -- ✅ GROUP NAME
        map("n", "<leader>t", function() end, {
          desc = "TypeScript",
        })

        map("n", "<leader>to", "<cmd>TSToolsOrganizeImports<cr>", {
          buffer = buf,
          desc = "TS: Organize imports",
        })

        map("n", "<leader>ta", "<cmd>TSToolsAddMissingImports<cr>", {
          buffer = buf,
          desc = "TS: Add missing imports",
        })

        map("n", "<leader>tu", "<cmd>TSToolsRemoveUnusedImports<cr>", {
          buffer = buf,
          desc = "TS: Remove unused imports",
        })

        map("n", "<leader>tf", "<cmd>TSToolsFixAll<cr>", {
          buffer = buf,
          desc = "TS: Fix all",
        })

        map("n", "<leader>td", "<cmd>TSToolsGoToSourceDefinition<cr>", {
          buffer = buf,
          desc = "TS: Go to source definition",
        })

        map("n", "<leader>tr", "<cmd>TSToolsRenameFile<cr>", {
          buffer = buf,
          desc = "TS: Rename file",
        })
      end,
    })
  end,
}
