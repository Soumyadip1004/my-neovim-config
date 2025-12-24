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
      ["tsconfig.json"] = { icon = "", color = "#377CC8", name = "TypeScript" },
      ["favicon.ico"] = { icon = "", color = "#FFFFFF", name = "Favicon" },
    },
    override_by_extension = {
      ["js"] = { icon = "", color = "#F5DF20", name = "JavaScript" },
      ["d.js"] = { icon = "", color = "#F5DF20", name = "JavaScript" },
      ["ts"] = { icon = "", color = "#377CC8", name = "TypeScript" },
      ["d.ts"] = { icon = "", color = "#377CC8", name = "TypeScript" },
      ["mjs"] = { icon = "", color = "#F5DF20", name = "JavaScript" },
      ["cjs"] = { icon = "", color = "#F5DF20", name = "JavaScript" },
      ["jsx"] = { icon = "󰜈", color = "#F5DF20", name = "JavaScriptReact" },
      ["tsx"] = { icon = "󰜈", color = "#377CC8", name = "TypeScriptReact" },
    },
  },
}
