return {
  colorscheme = "sonokai",
  plugins = {
    {
      ["NvChad/nvim-colorizer.lua"]= {disable = true}, 
      event = "User AstroFile",
      "sainnhe/sonokai",
      init = function() -- init function runs before the plugin is loaded
        vim.g.sonokai_style = "shusia"
      end,
    },
  },
}
