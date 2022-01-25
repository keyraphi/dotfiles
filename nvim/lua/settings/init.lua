local set = vim.opt
vim.notify = require("notify")
-------------------------------------
-- General settings
-------------------------------------
set.expandtab=true
set.shiftwidth=4
set.tabstop=4
set.fileencoding='utf-8'
set.hidden=true
set.signcolumn='auto'
set.relativenumber=true
set.number=true
set.termguicolors=true
set.undofile=true
set.spell=true
set.title=true
set.hlsearch=true
set.ignorecase=true
set.smartcase=true
set.wildmode='longest:full,full'
set.wrap=false
set.list=true
set.listchars={tab = '▸ ', trail = '·'}
set.mouse='a'
set.scrolloff=5
set.sidescrolloff=5
set.joinspaces=false
set.splitbelow=true
set.splitright=true
set.clipboard='unnamedplus'
set.confirm=true
set.exrc=true
set.backup=true
set.backupdir='~/.local/share/nvim/backup//'
set.updatetime=300
set.redrawtime=10000
set.cursorline=true
--------------------------------
-- Treesitter
--------------------------------
set.foldmethod='expr'
vim.wo.foldexpr='nvim_treesitter.foldexpr()'
