vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = false
vim.opt.updatetime = 300
vim.opt.timeoutlen = 600
vim.opt.backspace = "indent,eol,start"
vim.opt.signcolumn = "yes"
vim.opt.laststatus = 2
vim.opt.ruler = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.autochdir = true
vim.opt.breakindent = true
vim.opt.syntax = "on"
vim.opt.showmatch = true
vim.opt.scrolloff = 3
vim.opt.showmode = true
vim.opt.showcmd = false
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.autoread = true
vim.opt.foldenable = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.cmd([[
    cnoreabbrev W! w!
    cnoreabbrev Q! q!
    cnoreabbrev Qall! qall!
    cnoreabbrev Wq wq
    cnoreabbrev Wa wa
    cnoreabbrev wQ wq
    cnoreabbrev WQ wq
    cnoreabbrev W w
    cnoreabbrev Q q
    cnoreabbrev Qall qall
]])
