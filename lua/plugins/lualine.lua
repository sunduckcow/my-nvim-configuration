local status, lualine = pcall(require, 'lualine')
if not status then
    return
end

-- TODO play with thene
lualine.setup()
