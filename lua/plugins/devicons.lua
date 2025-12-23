return {
  "nvim-tree/nvim-web-devicons",
  opts = {
    override_by_filename = {
      ["biome.json"] = {
        icon = "",
        color = "#60A5FA",
        name = "Biome",
      },
      ["README.md"] = {
        icon = "󰍔",
        color = "#FFFFFF",
        name = "Markdown",
      },
    },
    override_by_extension = {
      ["js"] = { icon = "", color = "#F5DF20", name = "JavaScript" },
      ["mjs"] = { icon = "", color = "#F5DF20", name = "JavaScript" },
      ["cjs"] = { icon = "", color = "#F5DF20", name = "JavaScript" },
      ["jsx"] = { icon = "󰜈", color = "#F5DF20", name = "JavaScriptReact" },
    },
  },
}
