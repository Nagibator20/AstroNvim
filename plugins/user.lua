return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax

  -- Если плагины не в корневой папке нужно дополнительно подключать изх тут
  -- Цветовая тема
  { require "user.plugins.theme.solarized-osaka" },
  -- { require "user.plugins.theme.tokyo-night" },
  -- { require "user.plugins.theme.kanagawa" },

  -- Цветные скoбки
  {
    "HiPhish/rainbow-delimiters.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    main = "rainbow-delimiters.setup",
  },

  -- Emmet
  -- https://github.com/mattn/emmet-vim
  {
    "mattn/emmet-vim",
  },

  -- Показывеет скорость загрузки плагинов (:scriotnames - какие загружены)
  { "dstein64/vim-startuptime" },
}
