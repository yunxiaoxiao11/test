vim.g.mapleader = ' ' -- 设置leader键
vim.g.maplocalleader = ' '

local map = vim.api.nvim_set_keymap -- 局部变量
local opt = { noremap = true, silent = true }
map('n', '<SPACE>', '<NOP>', opt)   -- 防止空格移动

-- 行跳转映射
map('n', 'H', '^', opt)
map('v', 'H', '^', opt)
map('n', 'L', '$', opt)
map('v', 'L', '$', opt)
map('n', 'dL', 'd$', opt)

-- I 模式下jj退出
map('i', 'jj', '<ESC>', opt)
map('i', 'JJ', '<ESC>', opt)

map('i', '<A-h>', '<Left>', opt)
map('i', '<A-j>', '<Down>', opt)
map('i', '<A-k>', '<Up>', opt)
map('i', '<A-l>', '<Right>', opt)
map('i', '<A-a>', '<Home>', opt)
map('i', '<A-e>', '<End>', opt)
map('i', '<A-d>', '<Delete>', opt)

-- 左右Tab切换
map('n', '<gh>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<gl>', ':BufferLineCycleNext<CR>', opt)

-- 窗口操作
map('n', '<leader>sv', ':vsp<CR>', opt)
map('n', '<leader>sh', ':sp<CR>', opt)
map('n', '<leader>sc', '<C-w>c', opt) -- 关闭当前
map('n', '<leader>so', '<C-w>o', opt) -- 关闭其他
-- Alt + hjkl  窗口之间跳转
map('n', '<A-h>', '<C-w>h', opt)
map('n', '<A-j>', '<C-w>j', opt)
map('n', '<A-k>', '<C-w>k', opt)
map('n', '<A-l>', '<C-w>l', opt)
-- 关闭
--'moll/vim-bbye'
-- map('n', '<C-w>', ':Bdelete!<CR>', opt)
-- map('n', '<leader>bl', ':BufferLineCloseRight<CR>', opt)
-- map('n', '<leader>bh', ':BufferLineCloseLeft<CR>', opt)
-- map('n', '<leader>bc', ':BufferLinePickClose<CR>', opt)

-- 插件快捷键
local pluginKeys = {}

return pluginKeys
