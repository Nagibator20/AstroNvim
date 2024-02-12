return {
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   name = "lualine",
  --   event = "VeryLazy",
  --   opts = {},
  --   config = function()
  --     require("lualine").setup {
  --       options = {
  --         icons_enabled = true,
  --         theme = "auto",
  --         component_separators = { left = "", right = "" },
  --         section_separators = { left = "", right = "" },
  --         disabled_filetypes = {
  --           statusline = {},
  --           winbar = {},
  --         },
  --         ignore_focus = {},
  --         always_divide_middle = true,
  --         globalstatus = false,
  --         refresh = {
  --           statusline = 1000,
  --           tabline = 1000,
  --           winbar = 1000,
  --         },
  --       },
  --       sections = {
  --         lualine_a = { "mode" },
  --         lualine_b = { "branch", "diff", "diagnostics" },
  --         lualine_c = { "filename" },
  --         lualine_x = { "encoding", "fileformat", "filetype" },
  --         lualine_y = { "progress" },
  --         lualine_z = { "location" },
  --       },
  --       inactive_sections = {
  --         lualine_a = {},
  --         lualine_b = {},
  --         lualine_c = { "filename" },
  --         lualine_x = { "location" },
  --         lualine_y = {},
  --         lualine_z = {},
  --       },
  --       tabline = {},
  --       winbar = {},
  --       inactive_winbar = {},
  --       extensions = {},
  --     }
  --   end,
  -- },
  {
    "rebelot/heirline.nvim",
    name = "heirline",
    -- optional = true, -- это нужно закоментировать иначе будут стандартные настройки
    event = "VeryLazy",
    opts = function(_, opts)
      local status = require "astronvim.utils.status"

      opts.statusline = { -- statusline
        hl = { fg = "fg", bg = "bg" },
        status.component.mode { mode_text = { padding = { left = 1, right = 1 } } },
        status.component.git_branch(),
        status.component.file_info {
          filetype = {},
          filename = false,
          file_modified = {},
        },
        status.component.git_diff(),
        status.component.diagnostics(),
        status.component.fill(),
        status.component.cmd_info(),
        status.component.fill(),
        status.component.lsp(),
        status.component.treesitter(),
        status.component.nav(),
        -- status.component.mode { surround = { separator = "right" } },
      }
      return opts
    end,
  },
}
