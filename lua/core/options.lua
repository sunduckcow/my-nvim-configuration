local opt = vim.opt  

-- line numbers
opt.relativenumber = true
opt.number = true 

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth =  4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true 

-- cursor line
opt.cursorline = true

-- appearence
opt.termguicolors = true
-- opt.background = "dark"
opt.signcolumn = 'yes' -- wtf?

-- backspace
opt.backspace = 'indent,eol,start' -- wtf?

-- clipboard
opt.clipboard:append('unnamedplus')

-- split windows
opt.splitright = true
opt.splitbelow = true

-- now hello-world - its one word
opt.iskeyword:append('-')
