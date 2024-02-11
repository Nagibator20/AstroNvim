-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

local function map(mode, rhs, lhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend("force", options, opts) end
  vim.api.nvim_set_keymap(mode, rhs, lhs, options)
end

return {
  -- Режимы----------------------------------
  -- first key is the mode
  -- Определите функцию map для создания отображений с опцией noremap = true по умолчанию

  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- Добавление нового отображения

    map("n", "а", "f"),
    map("n", "б", ","),
    map("n", "в", "d"),
    map("n", "г", "u"),
    map("n", "д", "l"),
    map("n", "е", "t"),
    map("n", "ж", ";"),
    map("n", "з", "p"),
    map("n", "и", "b"),
    map("n", "й", "q"),
    map("n", "к", "r"),
    map("n", "л", "k"),
    map("n", "м", ":MenuV<cr>"),
    map("n", "м", "v"),
    map("n", "н", "y"),
    map("n", "о", "j"),
    map("n", "п", ":MenuG<cr>"),
    map("n", "р", "h"),
    map("n", "с", "c"),
    map("n", "т", "n"),
    map("n", "у", "e"),
    map("n", "ф", "a"),
    map("n", "х", "["),
    map("n", "ц", "w"),
    map("n", "ч", "x"),
    map("n", "ш", "i"),
    map("n", "щ", "o"),
    map("n", "ъ", "]"),
    map("n", "ы", "s"),
    map("n", "ь", "m"),
    map("n", "э", '"'),
    map("n", "ю", "."),
    map("n", "я", "z"),
    map("n", ".", "/"),
    -- mappings seen unjer group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {},
  v = {
    map("v", "а", "f"),
    map("v", "б", ","),
    map("v", "в", "d"),
    map("v", "г", "u"),
    map("v", "д", "l"),
    map("v", "е", "t"),
    map("v", "ж", ";"),
    map("v", "з", "p"),
    map("v", "и", "b"),
    map("v", "й", "q"),
    map("v", "к", "r"),
    map("v", "л", "k"),
    map("v", "м", "v"),
    map("v", "н", "y"),
    map("v", "о", "j"),
    map("v", "п", "g"),
    map("v", "р", "h"),
    map("v", "с", "c"),
    map("v", "т", "n"),
    map("v", "у", "e"),
    map("v", "ф", "a"),
    map("v", "х", "["),
    map("v", "ц", "w"),
    map("v", "ч", "x"),
    map("v", "ш", "i"),
    map("v", "щ", "o"),
    map("v", "ъ", "]"),
    map("v", "ы", "s"),
    map("v", "ь", "m"),
    map("v", "э", '"'),
    map("v", "ю", "."),
    map("v", "я", "z"),
    map("v", ".", "/"),
  },
}
