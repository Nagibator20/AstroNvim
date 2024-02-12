return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  -- Темы оформления==============================
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   config = function()
  --     require("catppuccin").setup {}
  --   end,
  -- },

  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   name = "solarized-osaka",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("solarized-osaka").setup {
  --       -- your configuration comes here
  --       -- or leave it empty to use the default settings
  --       transparent = false, -- Прозрачность
  --       terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  --       styles = {
  --         -- Стили применяемые к различным группам синтаксиса
  --         -- Value is any valid attr-list value for `:help nvim_set_hl`
  --         comments = { italic = true },
  --         keywords = { italic = true },
  --         functions = {},
  --         variables = {},
  --         -- Background styles. Can be "dark", "transparent" or "normal"
  --         sidebars = "dark", -- style for sidebars, see below
  --         floats = "dark", -- style for floating windows
  --       },
  --       sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  --       day_brightness = 1, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  --       hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  --       dim_inactive = false, -- dims inactive windows
  --       lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
  --
  --       --- You can override specific color groups to use other groups or a hex color
  --       --- function will be called with a ColorScheme table
  --       ---@param colors ColorScheme
  --       on_colors = function(colors) end,
  --
  --       --- You can override specific highlights to use other groups or a hex color
  --       --- function will be called with a Highlights and ColorScheme table
  --       ---@param highlights Highlights
  --       ---@param colors ColorScheme
  --       on_highlights = function(highlights, colors)
  --       -- Что бы работала подсветка синтаксиса нужно установить парсер
  --       -- Убедитесь, что установлен и запущен правильный парсер treeitter. Вы увидите «TS» в правом нижнем углу строки состояния.
  --       -- Если вы этого не сделаете, установите его для типа файла, который вы используете с .:TSInstall <filetype>
  --       end,
  --     }
  --   end,
  -- },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        light_style = "day", -- The theme is used when the background is set to light
        transparent = false, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "dark", -- style for sidebars, see below
          floats = "dark", -- style for floating windows
        },
        sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = false, -- dims inactive windows
        lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

        --- You can override specific color groups to use other groups or a hex color
        --- function will be called with a ColorScheme table
        ---@param colors ColorScheme
        on_colors = function(colors) end,

        --- You can override specific highlights to use other groups or a hex color
        --- function will be called with a Highlights and ColorScheme table
        ---@param highlights Highlights
        ---@param colors ColorScheme
        on_highlights = function(highlights, colors)
          -- Что бы работала подсветка синтаксиса нужно установить парсер
          -- Убедитесь, что установлен и запущен правильный парсер treeitter. Вы увидите «TS» в правом нижнем углу строки состояния.
          -- Если вы этого не сделаете, установите его для типа файла, который вы используете с .:TSInstall <filetype>
        end,
      }
    end,
  },
  -- Цветные скoбки
  {
    "HiPhish/rainbow-delimiters.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    main = "rainbow-delimiters.setup",
  },
  -- Показывеет скорость загрузки плагинов (:scriotnames - какие загружены)
  { "dstein64/vim-startuptime" },
  --Попытка подключить inline hint--------------------------------------
  -- {
  --   "lvimuser/lsp-inlayhints.nvim",
  --   name = "lsp-inlayhints",
  --   config = function()
  --     require("lsp-inlayhints").setup {
  --       settings = {
  --         typescript = {
  --           inlayHints = {
  --             includeInlayParameterNameHints = "all",
  --             includeInlayParameterNameHintsWhenArgumentMatchesName = false,
  --             includeInlayFunctionParameterTypeHints = true,
  --             includeInlayVariableTypeHints = true,
  --             includeInlayVariableTypeHintsWhenTypeMatchesName = false,
  --             includeInlayPropertyDeclarationTypeHints = true,
  --             includeInlayFunctionLikeReturnTypeHints = true,
  --             includeInlayEnumMemberValueHints = true,
  --           },
  --         },
  --         javascript = {
  --           inlayHints = {
  --             includeInlayParameterNameHints = "all",
  --             includeInlayParameterNameHintsWhenArgumentMatchesName = false,
  --             includeInlayFunctionParameterTypeHints = true,
  --             includeInlayVariableTypeHints = true,
  --             includeInlayVariableTypeHintsWhenTypeMatchesName = false,
  --             includeInlayPropertyDeclarationTypeHints = true,
  --             includeInlayFunctionLikeReturnTypeHints = true,
  --             includeInlayEnumMemberValueHints = true,
  --           },
  --         },
  --       },
  --     }
  --   end,
  -- },
}
--
