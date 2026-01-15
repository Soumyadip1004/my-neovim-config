
-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "html",
      "tsx",
      "javascript",
      "vim",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
