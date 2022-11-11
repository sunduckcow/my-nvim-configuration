vim.g.mapleader = ' '

local key = vim.keymap

-- general keymaps
key.set('i', 'jk', '<ESC>') -- exit insert mode
key.set('n', '<leader>nh', ':nohl<CR>') -- clear search higlights
key.set('n', 'x', '"_x') -- no copy to clipboard character deleted with 

-- key.set('n', '<leader>t', ':echo "Special keymap!!!"<CR>')

-- key.set('n', '<leader>+', '<C-a>')
-- key.set('n', '<leader>-', '<C-x>') -- useless

-- split window
key.set('n', '<leader>sv', '<C-w>v')
key.set('n', '<leader>sh', '<C-w>s')
key.set('n', '<leader>se', '<C-w>=')
key.set('n', '<leader>sx', ':close<CR>')

-- tabs
key.set('n', '<leader>to', ':tabnew<CR>')
key.set('n', '<leader>tx', ':tabclose<CR>')
key.set('n', '<leader>tn', ':tabn<CR>')
key.set('n', '<leader>tp', ':tabp<Cr>')

-- plugin keymaps

-- vim-maximizer
key.set('n', '<leader>sm', ':MaximizerToggle<CR>')
