local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

local bg = '#282A36'
local fg = '#F8F8F2'
local purple = '#BD93F9'

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = fg,
      bg = bg
    },
    separator_selected = {
      fg = fg
    },
    background = {
      fg = fg,
      bg = bg
    },
    buffer_selected = {
      fg = purple,
      bold = true
    },
    fill = {
      bg = bg
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
