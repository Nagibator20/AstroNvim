return {
  {
    "rebelot/heirline.nvim",
    name = "heirline",
    -- optional = true, -- это нужно закоментировать иначе будут стандартные настройки
    event = "VeryLazy",
    opts = function(_, opts)
      local status = require "astronvim.utils.status"

      local Ruler = {
        provider = "%7(%l/%3L%):%2c %P",
      }
      local ScrollBar = {
        static = {
          sbar = { "█", "▇", "▆", "▅", "▄", "▃", "▂", "▁" },
          -- Another variant, because the more choice the better.
          -- sbar = { '🭶', '🭷', '🭸', '🭹', '🭺', '🭻' }
        },
        provider = function(self)
          local curr_line = vim.api.nvim_win_get_cursor(0)[1]
          local lines = vim.api.nvim_buf_line_count(0)
          local i = math.floor((curr_line - 1) / lines * #self.sbar) + 1
          return string.rep(self.sbar[i], 2)
        end,
        hl = { fg = "blue", bg = "bright_bg" },
      }
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
        -- Ruler,
        -- ScrollBar,
        -- status.component.nav(Ruler),
        -- status.component.mode { surround = { separator = "right" } },
        {
          provider = function()
            local curr_line = vim.api.nvim_win_get_cursor(0)[1]
            local total_lines = vim.api.nvim_buf_line_count(0)
            -- local column = vim.api.nvim_buf_li
            local percent = math.floor(curr_line / total_lines * 100)
            return string.format("(%d/%d) %d%%", curr_line, total_lines, percent)
          end,
          -- hl = { fg = "blue", bg = "#FFFFFF" },
        },
      }
      return opts
    end,
  },
}
