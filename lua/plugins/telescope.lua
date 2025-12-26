return {
  "nvim-telescope/telescope.nvim",
  tag = "v0.2.0",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  require("telescope").setup {
    defaults = {
      layout_config = {
        vertical = { width = 0.5 },
        -- other layout configuration here
      },
      -- other defaults configuration here
    },
    -- other configuration values here
  },

  config = function()
    local telescope = require "telescope"

    telescope.setup {
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          ".git",
          ".next",
          "dist",
          "build",
        },
      },
      extensions = {
        file_browser = {
          hijack_netrw = true,
          depth = 5, -- how deep to recurse
          -- auto_depth = true, -- increase depth when searching

          hidden = true,
          -- respect_gitignore = true,
        },
      },
    }

    telescope.load_extension "file_browser"
  end,

  keys = {
    {
      "<leader>fe",
      function()
        require("telescope").extensions.file_browser.file_browser {
          path = vim.loop.cwd(),
          select_buffer = true,
        }
      end,
      desc = "File explorer",
    },

    -- a
    {
      "<leader>fa",
      function()
        require("telescope.builtin").find_files {
          cwd = vim.fn.stdpath "config",
        }
      end,
      desc = "Find AstroNvim config files",
    },

    -- b
    {
      "<leader>fb",
      function() require("telescope.builtin").buffers() end,
      desc = "Find buffers",
    },

    -- c
    {
      "<leader>fc",
      function() require("telescope.builtin").grep_string() end,
      desc = "Find word under cursor",
    },

    -- C
    {
      "<leader>fC",
      function() require("telescope.builtin").commands() end,
      desc = "Find commands",
    },

    -- f
    {
      "<leader>ff",
      function() require("telescope.builtin").find_files() end,
      desc = "Find files",
    },

    -- F
    {
      "<leader>fF",
      function() require("telescope.builtin").find_files { hidden = true, no_ignore = true } end,
      desc = "Find all files",
    },

    -- g
    {
      "<leader>fg",
      function() require("telescope.builtin").git_files() end,
      desc = "Find git files",
    },

    -- h
    {
      "<leader>fh",
      function() require("telescope.builtin").help_tags() end,
      desc = "Find help",
    },

    -- k
    {
      "<leader>fk",
      function() require("telescope.builtin").keymaps() end,
      desc = "Find keymaps",
    },

    -- l
    {
      "<leader>fl",
      function() require("telescope.builtin").current_buffer_fuzzy_find() end,
      desc = "Find lines",
    },

    -- m
    {
      "<leader>fm",
      function() require("telescope.builtin").man_pages() end,
      desc = "Find man",
    },

    -- o
    -- {
    --   "<leader>fo",
    --   function() require("telescope.builtin").oldfiles() end,
    --   desc = "Find old files",
    -- },
    --
    -- -- O
    -- {
    --   "<leader>fO",
    --   function() require("telescope.builtin").oldfiles { cwd_only = true } end,
    --   desc = "Find old files (cwd)",
    -- },

    -- r
    {
      "<leader>fr",
      function() require("telescope.builtin").registers() end,
      desc = "Find registers",
    },

    -- T
    {
      "<leader>fT",
      function() require("telescope.builtin").grep_string { search = "TODO" } end,
      desc = "Find TODOs",
    },

    -- w
    {
      "<leader>fw",
      function() require("telescope.builtin").live_grep() end,
      desc = "Find words",
    },

    -- W
    {
      "<leader>fW",
      function() require("telescope.builtin").live_grep { additional_args = { "--hidden" } } end,
      desc = "Find words in all files",
    },

    -- '
    {
      "<leader>f'",
      function() require("telescope.builtin").marks() end,
      desc = "Find marks",
    },
  },
}
