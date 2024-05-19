local opt = vim.opt

opt.number = true    --set linenumber

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = true
opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true


opt.cursorline=true  --show current line
opt.swapfile = false --turn off swapfile
