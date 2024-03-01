return {
  -- Подсказки как в VSCode показывает какие аргументы принимает функция
  -- https://github.com/ray-x/lsp_signature.nvim
  {
    "ray-x/lsp_signature.nvim",
    name = "lsp_signature",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      local lsp_signature = require "lsp_signature"

      lsp_signature.setup {
        doc_lines = 0,
        max_height = 10,
        max_width = 40, -- the value need >= 40
        padding = "", -- Разделитель
        wrap = true,
        floating_window = true, -- показывать подсказку во всплывающем окне, установите значение false для режима только с виртуальным текстом.
        floating_window_above_cur_line = true, -- Размещает плавающий элемент над строкой
        fix_pas = false, -- true окно не будет закрыватся пока не закончатся все параметры
        hint_enable = false, -- Виртуальные подсказки (справа текст)
        hint_prefix = " ", --
        hint_scheme = "String", -- схема подсказки.
        hint_inline = function() return false end, -- should the hint be inline(nvim 0.10 only)?  default false
        -- return true | 'inline' to show hint inline, return 'eol' to show hint at end of line, return false to disable
        -- return 'right_align' to display hint right aligned in the current line
        hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
        handler_opts = {
          border = "rounded", -- double, rounded, single, shadow, none, or a table of borders
        },
        floating_window_off_x = 1, -- корректировка позиции x всплывающих окон. Может быть либо числом, либо функцией.
        floating_window_off_y = 0, -- корректировка позиции y всплывающих окон. Например, -2 перемещает окно на 2 строки вверх;
        -- 2 перемещает на 2 строки вниз. Может быть либо числом, либо функцией, см. примеры.
      }
    end,
  },
}
