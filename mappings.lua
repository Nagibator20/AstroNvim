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

vim.o.timeoutlen = 1000 -- таймер вывода меню

return {
  -- Режимы----------------------------------
  -- first key is the mode

  -- Для нормального режима
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
    map("n", "м", "i"),
    map("n", "м", "v"),
    map("n", "н", "y"),
    map("n", "о", "j"),
    map("n", "п", "g"),
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
    map("n", "Ё", "~"),
    ["вв"] = ":delete<CR>",
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

  -- Для терминала
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },

  -- Для режима вставки
  i = {
    -- работает херово
    -- ["оо"] = "<Esc>",
    -- ["вв"] = "<Esc>:delete<CR>",
    -- vim.api.nvim_set_keymap("i", "оо", "<Esc>", { noremap = true }), -- дублирует поведение jj

    -- работает нормально
    vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true }), -- сохраняет и возвращается в режим вставки при нажатии ctr+s
    vim.api.nvim_set_keymap("i", "<Esc>", "<Esc>:w<CR>", { noremap = true, silent = true }), -- выходит в нормальный режим и сохраняет
  },

  -- Для режима выделения
  v = {},
  -- Для режима (ожидающего) оператора
  o = {},
}
