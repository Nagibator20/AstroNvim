return {
  -- -- Add the community repository of plugin specifications
  -- "AstroNvim/astrocommunity",
  -- -- example of importing a plugin, comment out to use it or add your own
  -- -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  --
  -- -- Theme--------------------------------
  -- -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- -- { import = "astrocommunity.colorscheme.sonokai" },
  -- { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  -- -- { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  --
  -- -- еще какая то хрень-------------------
  -- -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.nightfox-nvim", enabled = false },
  { import = "astrocommunity.colorscheme.kanagawa-nvim", enabled = false },
  { import = "astrocommunity.colorscheme.tokyonight-nvim", enabled = false},
  { import = "astrocommunity.colorscheme.catppuccin", enabled = false },
  { -- further customize the options set by the community
    "catppuccin",
    opts = {
      integrations = {
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        overseer = true,
        lsp_trouble = true,
        rainbow_delimiters = true,
      },
    },
  },
}
