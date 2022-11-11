local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, 'packer')
if not status then
    return
end

return packer.startup(function(use)
  -- packer plugin :)
  use 'wbthomason/packer.nvim'

  -- lua functions for other plugins
  use 'nvim-lua/plenary.nvim'

  -- colorscheme
  use 'morhetz/gruvbox'

  -- Which key plugin
  -- TODO: move its configuration somewhere else
  use { "folke/which-key.nvim", config = function() require("which-key").setup { window = { border = 'single' } }; end }

  -- integration w/ tmux + C-[h,j,k,l] for jumping between splits
  use 'christoomey/vim-tmux-navigator' 

  -- split maximizer
  use 'szw/vim-maximizer'

  -- essentioal plugins

  -- more actions with brackets
  -- test   -> ysw' -> 'test'
  -- 'test' -> ds'  -> test
  -- 'test' -> cs'" -> "test"
  -- also suppurts {}
  -- 'test' -> cs'{ -> { test }
  use 'tpope/vim-surround'

  -- idk check documentation
  -- use 'vim-scripts/ReplaceWithRegister'
  
  -- easy comments 
  -- use gcc for comment line 
  use 'numToStr/Comment.nvim'
  -- use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }

  -- file explorer
  use 'nvim-tree/nvim-tree.lua'

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- statusline
  use 'nvim-lualine/lualine.nvim'

  -- telescope for fuzzy finding
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x' }

   -- autocompletion
  use("hrsh7th/nvim-cmp") -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths

  -- snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets


 -- managing & installing lsp servers, linters & formatters
  use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
  use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

  -- configuring lsp servers
  use("neovim/nvim-lspconfig") -- easily configure language servers
  use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
  use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
  use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion



  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
