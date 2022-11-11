local setup, nvimtree = pcall(require, 'nvim-tree')
if not setup then
    return
end

-- recommended settings from documentatoin
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup()
