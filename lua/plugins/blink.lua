return {
  "saghen/blink.cmp",
  opts = {
    appearance = {
      nerd_font_variant = "mono",
    },

    completion = {
      documentation = { auto_show = true },
      menu = {
        draw = {
          columns = {
            { "kind_icon", gap = 1 }, -- ICON FIRST
            { "label", "label_description", gap = 2 }, -- MAIN TEXT
            { "kind" },
          },
        },
      },
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
  opts_extend = { "sources.default" },
}
