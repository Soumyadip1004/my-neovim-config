---@type LazySpec
return {
  "echasnovski/mini.surround",
  version = false, -- always use latest, this plugin actually knows what it's doing
  opts = {
    mappings = {
      add = "gsa", -- Add surrounding
      delete = "gsd", -- Delete surrounding
      replace = "gsr", -- Replace surrounding
      find = "gsf", -- Find surrounding
      find_left = "gsF", -- Find surrounding (left)
      highlight = "gsh", -- Highlight surrounding
      update_n_lines = "gsn",
    },
  },
}
