local opt = vim.opt

-- Tabs / Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Appearance
opt.relativenumber = true
opt.number = true
opt.termguicolors = true

-- opt.colorcolumn = '80'
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"

-- Add transparent background terminal window
vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  hi NoramlNC guibg=NONE ctermbg=NONE
  hi SignColumn guibg=NONE ctermbg=NONE
]])

-- Set popup menu transparency
if vim.fn.has('nvim') == 1 then
  vim.cmd([[set pumblend=10]])
end

-- Behaviour
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.modifiable = true
opt.encoding = "UTF-8"
