vim.g.mapleader = ' '

local key = vim.keymap

-- general keymaps
key.set('i', 'jk', '<ESC>') -- exit insert mode
key.set('n', '<leader>nh', ':nohl<CR>') -- clear search higlights
key.set('n', 'x', '"_x') -- no copy to clipboard character deleted with 

key.set('n', '<leader>t', ':echo "Special keymap!!!"<CR>')

-- key.set('n', '<leader>+', '<C-a>')
-- key.set('n', '<leader>-', '<C-x>') -- useless

