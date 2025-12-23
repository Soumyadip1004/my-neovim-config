return {
  {
    "brenoprata10/nvim-highlight-colors",
    event = "BufReadPre",
    opts = {
      render = "virtual", -- 👈 this is the key
      virtual_symbol = "", -- small, clean dot
      virtual_symbol_position = "inline",
      enable_tailwind = true,
      enable_hex = true,
      enable_rgb = true,
      enable_hsl = true,
    },
  },
}
